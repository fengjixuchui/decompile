/* radare - LGPL - Copyright 2007-2018 - pancake */

#include "r_util.h"
#include "r_util/r_print.h"
#include "r_util/r_date.h"

R_API char *r_time_stamp_to_str(ut32 timeStamp) {
#ifdef _MSC_VER
	time_t rawtime;
	struct tm *tminfo;
	rawtime = (time_t)timeStamp;
	tminfo = localtime (&rawtime);
	//tminfo = gmtime (&rawtime);
	return r_str_trim_dup (asctime (tminfo));
#else
	struct my_timezone {
		int tz_minuteswest;     /* minutes west of Greenwich */
		int tz_dsttime;         /* type of DST correction */
	} tz;
	struct timeval tv;
	int gmtoff;
	time_t ts = (time_t) timeStamp;
	gettimeofday (&tv, (void*) &tz);
	gmtoff = (int) (tz.tz_minuteswest * 60); // in seconds
	ts += (time_t)gmtoff;
	char *res = strdup (ctime (&ts));
	if (res) {
		r_str_trim (res); // XXX we probably need an r_str_trim_dup()
	}
	return res;
#endif
}

R_API ut32 r_dos_time_stamp_to_posix(ut32 timeStamp) {
        ut16 date = timeStamp >> 16; 
        ut16 time = timeStamp & 0xFFFF;

        /* Date */
        ut32 year = ((date & 0xfe00) >> 9) + 1980;
        ut32 month = (date & 0x01e0) >> 5;
        ut32 day = date & 0x001f;

        /* Time */
        ut32 hour = (time & 0xf800) >> 11; 
        ut32 minutes = (time & 0x07e0) >> 5;
        ut32 seconds = (time & 0x001f) << 1;

	/* Convert to epoch */
	struct tm t = {0};
	t.tm_year = year - 1900;
	t.tm_mon = month > 0 ? month - 1 : month;
	t.tm_mday = day > 0 ? day : 1;
	t.tm_hour = hour;
	t.tm_min = minutes;
	t.tm_sec = seconds;
	t.tm_isdst = -1;
	time_t epochTime = mktime (&t);

	return (ut32) epochTime;
}

R_API bool r_time_stamp_is_dos_format(const ut32 certainPosixTimeStamp, const ut32 possiblePosixOrDosTimeStamp) {
	/* We assume they're both POSIX timestamp and thus the higher bits would be equal if they're close to each other */
	if ((certainPosixTimeStamp >> 16) == (possiblePosixOrDosTimeStamp >> 16)) {
		return false;
	}
	return true;
}


R_API int r_print_date_dos(RPrint *p, const ut8 *buf, int len) {
	if(len < 4) {
		return 0;
	}

	ut32 dt = buf[3] << 24 | buf[2] << 16 | buf[1] << 8 | buf[0];
	p->cb_printf ("%s\n", r_time_stamp_to_str ( r_dos_time_stamp_to_posix (dt)));
	return 4;
}

R_API int r_print_date_hfs(RPrint *p, const ut8 *buf, int len) {
	const int hfs_unix_delta = 2082844800;
	time_t t = 0;
	int ret = 0;

	if (p && len >= sizeof (ut32)) {
		t = r_read_ble32 (buf, p->big_endian);
		if (p->datefmt[0]) {
			t += p->datezone * (60*60);
			t += hfs_unix_delta;

			p->cb_printf ("%s\n", r_time_stamp_to_str (t));
			ret = sizeof (time_t);
		}
	}
	return ret;
}

R_API int r_print_date_unix(RPrint *p, const ut8 *buf, int len) {
	time_t t = 0;
	int ret = 0;

	if (p && len >= sizeof (ut32)) {
		t = r_read_ble32 (buf, p->big_endian);
		if (p->datefmt[0]) {
			t += p->datezone * (60*60);
			char *datestr = r_time_stamp_to_str (t);
			if (datestr) {
				p->cb_printf ("%s\n", datestr);
				free (datestr);
			}
			ret = sizeof (time_t);
		}
	}
	return ret;
}

R_API int r_print_date_get_now(RPrint *p, char *str) {
	int ret = 0;
        time_t l;

        *str = 0;
        l = time(0);

	str = r_time_stamp_to_str (l);
	p->cb_printf ("%s\n", str);
	ret = sizeof (time_t);
	return ret;
}

R_API int r_print_date_w32(RPrint *p, const ut8 *buf, int len) {
	ut64 l, L = 0x2b6109100LL;
	time_t t;
	int ret = 0;

	if (p && len >= sizeof (ut64)) {
		l = r_read_ble64 (buf, p->big_endian);
		l /= 10000000; // 100ns to s
		l = (l > L ? l-L : 0); // isValidUnixTime?
		t = (time_t) l; // TODO limit above!
		if (p->datefmt[0]) {
			p->cb_printf ("%s\n", r_time_stamp_to_str (t));
			ret = sizeof (time_t);
		}
	}

	return ret;
}

R_API const char *r_time_to_string (ut64 ts) {
	time_t l;
	l = ts >> 20;
	return r_time_stamp_to_str (l);
}
