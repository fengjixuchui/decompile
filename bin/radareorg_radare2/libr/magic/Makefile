include ../../global.mk
include $(LTOP)/config.mk

NAME=r_magic
DEPS=r_util
PCLIBS=@LIBMAGIC@
CFLAGS+=-I.
OBJS=apprentice.o ascmagic.o fsmagic.o funcs.o is_tar.o magic.o softmagic.o

include deps.mk

include $(LTOP)/rules.mk

libfile.a:
	${CC} -c ${CFLAGS} ${SRC}
	ar q libfile.a *.o
	ranlib libfile.a

BIN=file${EXT_EXE}
${BIN}:
	${CC} -I../include ${CFLAGS} ${SRC} file.c -o ${BIN}
