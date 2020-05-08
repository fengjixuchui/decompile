/* radare - LGPL - Copyright 2018-2019 - pancake */

#include <r_util.h>
#include <r_util/r_print.h>

static void pj_raw(PJ *j, const char *msg) {
	r_return_if_fail (j && msg);
	if (*msg) {
		r_strbuf_append (j->sb, msg);
	}
}

static void pj_comma(PJ *j) {
	r_return_if_fail (j);
	if (!j->is_key) {
		if (!j->is_first) {
			pj_raw (j, ",");
		}
	}
	j->is_first = false;
	j->is_key = false;
}

R_API PJ *pj_new() {
	PJ *j = R_NEW0 (PJ);
	if (j) {
		j->sb = r_strbuf_new ("");
		j->is_first = true;
	}
	return j;
}

R_API void pj_free(PJ *pj) {
	if (pj) {
		r_strbuf_free (pj->sb);
		free (pj);
	}
}

R_API char *pj_drain(PJ *pj) {
	r_return_val_if_fail (pj && pj->level == 0, NULL);
	char *res = r_strbuf_drain (pj->sb);
	pj->sb = NULL;
	free (pj);
	return res;
}

R_API const char *pj_string(PJ *j) {
	return j? r_strbuf_get (j->sb): NULL;
}

static PJ *pj_begin(PJ *j, char type) {
	if (j) {
		if (!j || j->level >= R_PRINT_JSON_DEPTH_LIMIT) {
			return NULL;
		}
		char msg[2] = { type, 0 };
		pj_raw (j, msg);
		j->braces[j->level] = (type == '{') ? '}' : ']';
		j->level++;
		j->is_first = true;
	}
	return j;
}

R_API PJ *pj_o(PJ *j) {
	r_return_val_if_fail (j, j);
	pj_comma (j);
	return pj_begin (j, '{');
}

R_API PJ *pj_a(PJ *j) {
	r_return_val_if_fail (j, j);
	pj_comma (j);
	return pj_begin (j, '[');
}

R_API PJ *pj_end(PJ *j) {
	r_return_val_if_fail (j, j);
	if (j->level < 1) {
		return j;
	}
	if (--j->level < 1) {
		char msg[2] = { j->braces[j->level], 0 };
		pj_raw (j, msg);
		j->level = 0;
		return j;
	}
	j->is_first = false;
	char msg[2] = { j->braces[j->level], 0 };
	pj_raw (j, msg);
	return j;
}

R_API PJ *pj_k(PJ *j, const char *k) {
	r_return_val_if_fail (j && k, j);
	j->is_key = false;
	pj_s (j, k);
	pj_raw (j, ":");
	j->is_first = false;
	j->is_key = true;
	return j;
}

R_API PJ *pj_kn(PJ *j, const char *k, ut64 n) {
	r_return_val_if_fail (j && k, j);
	pj_k (j, k);
	pj_n (j, n);
	return j;
}

R_API PJ *pj_kN(PJ *j, const char *k, st64 n) {
	if (j && k) {
		pj_k (j, k);
		pj_N (j, n);
	}
	return j;
}

R_API PJ *pj_kd(PJ *j, const char *k, double d) {
	r_return_val_if_fail (j && k, j);
	pj_k (j, k);
	pj_d (j, d);
	return j;
}

R_API PJ *pj_kf(PJ *j, const char *k, float d) {
	r_return_val_if_fail (j && k, j);
	pj_k (j, k);
	pj_f (j, d);
	return j;
}
R_API PJ *pj_ki(PJ *j, const char *k, int i) {
	r_return_val_if_fail (j && k, j);
	pj_k (j, k);
	pj_i (j, i);
	return j;
}

R_API PJ *pj_ks(PJ *j, const char *k, const char *v) {
	r_return_val_if_fail (j && k && v, j);
	//if (*k && *v) 
	pj_k (j, k);
	pj_s (j, v);
	return j;
}

R_API PJ *pj_kb(PJ *j, const char *k, bool v) {
	r_return_val_if_fail (j && k, j);
	pj_k (j, k);
	pj_b (j, v);
	return j;
}

R_API PJ *pj_b(PJ *j, bool v) {
	r_return_val_if_fail (j, j);
	pj_comma (j);
	pj_raw (j, r_str_bool (v));
	return j;
}

R_API PJ *pj_s(PJ *j, const char *k) {
	r_return_val_if_fail (j && k, j);
	pj_comma (j);
	pj_raw (j, "\"");
	char *ek = r_str_escape_utf8_for_json (k, -1);
	if (ek) {
		pj_raw (j, ek);
		free (ek);
	} else {
		eprintf ("damn\n");
	}
	pj_raw (j, "\"");
	return j;
}

R_API PJ *pj_j(PJ *j, const char *k) {
	r_return_val_if_fail (j && k, j);
	if (*k) {
		pj_comma (j);
		pj_raw (j, k);
	}
	return j;
}

R_API PJ *pj_n(PJ *j, ut64 n) {
	r_return_val_if_fail (j, j);
	pj_comma (j);
	pj_raw (j, sdb_fmt ("%" PFMT64u, n));
	return j;
}

R_API PJ *pj_N(PJ *j, st64 n) {
	r_return_val_if_fail (j, NULL);
	pj_comma (j);
	pj_raw (j, sdb_fmt ("%"PFMT64d, n));
	return j;
}

R_API PJ *pj_f(PJ *j, float f) {
	r_return_val_if_fail (j, NULL);
	pj_comma (j);
	pj_raw (j, sdb_fmt ("%f", f));
	return j;
}

R_API PJ *pj_d(PJ *j, double d) {
	r_return_val_if_fail (j, NULL);
	pj_comma (j);
	pj_raw (j, sdb_fmt ("%lf", d));
	return j;
}

R_API PJ *pj_i(PJ *j, int i) {
	if (j) {
		pj_comma (j);
		pj_raw (j, sdb_fmt ("%d", i));
	}
	return j;
}

R_API char *pj_fmt(PrintfCallback p, const char *fmt, ...) {
	va_list ap;
	va_start (ap, fmt);

	char ch[2] = { 0 };
	PJ *j = pj_new ();
	while (*fmt) {
		j->is_first = true;
		ch[0] = *fmt;
		switch (*fmt) {
		case '\\':
			fmt++;
			switch (*fmt) {
			// TODO: add \x, and \e
			case 'e':
				pj_raw (j, "\x1b");
				break;
			case 'r':
				pj_raw (j, "\r");
				break;
			case 'n':
				pj_raw (j, "\n");
				break;
			case 'b':
				pj_raw (j, "\b");
				break;
			}
			break;
		case '\'':
			pj_raw (j, "\"");
			break;
		case '%':
			fmt++;
			switch (*fmt) {
			case 'b':
				pj_b (j, va_arg (ap, int));
				break;
			case 's':
				pj_s (j, va_arg (ap, const char *));
				break;
			case 'S': {
				const char *s = va_arg (ap, const char *);
				char *es = r_base64_encode_dyn (s, -1);
				pj_s (j, es);
				free (es);
			} break;
			case 'n':
				pj_n (j, va_arg (ap, ut64));
				break;
			case 'd':
				pj_d (j, va_arg (ap, double));
				break;
			case 'i':
				pj_i (j, va_arg (ap, int));
				break;
			default:
				eprintf ("Invalid format\n");
				break;
			}
			break;
		default:
			ch[0] = *fmt;
			pj_raw (j, ch);
			break;
		}
		fmt++;
	}
	char *ret = NULL;
	if (p) {
		p ("%s", r_strbuf_get (j->sb));
		pj_free (j);
	} else {
		ret = pj_drain (j);
	}
	va_end (ap);
	return ret;
}
