/*

   DEX Repair
   -----------------------------------------

   Anestis Bechtsoudis <anestis@census-labs.com>
   Copyright 2015-2016 by CENSUS S.A. All Rights Reserved.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

*/

#include <sys/stat.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <dirent.h>
#include <string.h>

#include "common.h"
#include "utils.h"
#include "log.h"

static bool utils_readdir(infiles_t *pFiles)
{
    DIR *dir = opendir(pFiles->inputFile);
    if (!dir) {
        LOGMSG_P(l_ERROR, "Couldn't open dir '%s'", pFiles->inputFile);
        return false;
    }

    size_t count = 0;
    for (;;) {
        errno = 0;
        struct dirent *entry = readdir(dir);
        if (entry == NULL && errno == EINTR) {
            continue;
        }
        if (entry == NULL && errno != 0) {
            LOGMSG_P(l_ERROR, "readdir('%s')", pFiles->inputFile);
            return false;
        }
        if (entry == NULL) {
            break;
        }

        char path[PATH_MAX];
        snprintf(path, sizeof(path), "%s/%s", pFiles->inputFile, entry->d_name);

        struct stat st;
        if (stat(path, &st) == -1) {
            LOGMSG(l_WARN, "Couldn't stat() the '%s' file", path);
            continue;
        }

        if (!S_ISREG(st.st_mode)) {
            LOGMSG(l_DEBUG, "'%s' is not a regular file, skipping", path);
            continue;
        }

        if (st.st_size == 0) {
            LOGMSG(l_DEBUG, "'%s' is empty", path);
            continue;
        }

        if (!(pFiles->files = realloc(pFiles->files, sizeof(char *) * (count + 1)))) {
            LOGMSG_P(l_ERROR, "Couldn't allocate memory");
            closedir(dir);
            return false;
        }

        pFiles->files[count] = strdup(path);
        if (!pFiles->files[count]) {
            LOGMSG_P(l_ERROR, "Couldn't allocate memory");
            closedir(dir);
            return false;
        }
        pFiles->fileCnt = ++count;

        LOGMSG(l_DEBUG, "Added '%s' to the list of input files", path);
    }

    closedir(dir);
    if (count == 0) {
        LOGMSG(l_ERROR, "Directory '%s' doesn't contain any regular files", pFiles->inputFile);
        return false;
    }

    LOGMSG(l_INFO, "%u input files have been added to the list", pFiles->fileCnt);
    return true;
}

bool utils_init(infiles_t *pFiles)
{
    pFiles->files = malloc(sizeof(char *));
    if (!pFiles->files) {
        LOGMSG_P(l_ERROR, "Couldn't allocate memory");
        return false;
    }

    if (!pFiles->inputFile) {
        LOGMSG(l_ERROR, "No input file/dir specified");
        return false;
    }

    struct stat st;
    if (stat(pFiles->inputFile, &st) == -1) {
        LOGMSG_P(l_ERROR, "Couldn't stat the input file/dir '%s'",
                pFiles->inputFile);
        return false;
    }

    if (S_ISDIR(st.st_mode)) {
        return utils_readdir(pFiles);
    }

    if (!S_ISREG(st.st_mode)) {
        LOGMSG(l_ERROR, "'%s' is not a regular file, nor a directory",
                pFiles->inputFile);
        return false;
    }

    pFiles->files[0] = pFiles->inputFile;
    pFiles->fileCnt = 1;

    return true;
}

bool utils_writeToFd(int fd, uint8_t *buf, off_t fileSz)
{
    off_t written = 0;
    while (written < fileSz) {
        ssize_t sz = write(fd, &buf[written], fileSz - written);
        if (sz < 0 && errno == EINTR)
            continue;

        if (sz < 0)
            return false;

        written += sz;
    }

    return true;
}

uint8_t* utils_mapFileToRead(char *fileName, off_t *fileSz, int *fd)
{
    if ((*fd = open(fileName, O_RDONLY)) == -1) {
        LOGMSG_P(l_WARN, "Couldn't open() '%s' file in R/O mode", fileName);
        return NULL;
    }

    struct stat st;
    if (fstat(*fd, &st) == -1) {
        LOGMSG_P(l_WARN, "Couldn't stat() the '%s' file", fileName);
        close(*fd);
        return NULL;
    }

    uint8_t *buf;
    if ((buf = mmap(NULL, st.st_size, PROT_READ | PROT_WRITE, MAP_PRIVATE,
            *fd, 0)) == MAP_FAILED) {
        LOGMSG_P(l_WARN, "Couldn't mmap() the '%s' file", fileName);
        close(*fd);
        return NULL;
    }

    *fileSz = st.st_size;
    return buf;
}
