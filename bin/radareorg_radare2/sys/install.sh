#!/bin/sh

MAKE=make
gmake --help >/dev/null 2>&1
[ $? = 0 ] && MAKE=gmake

# if owner of sys/install.sh != uid && uid == 0 { exec sudo -u id -A $SUDO_UID sys/install.sh $* }
ARGS=""
while : ; do
	[ -z "$1" ] && break
	case "$1" in
	--help)
		./configure --help
		echo
		echo "NOTE: Use sys/install.sh --install to use 'cp' instead of 'ln'."
		echo
		exit 0
		;;
	"--with-capstone5")
		export USE_CS5=1
		rm -rf shlr/capstone
		shift
		continue
		;;
	"--install")
		export INSTALL_TARGET="install"
		shift
		continue
		;;
	*)
		ARGS="${ARGS} $1"
		;;
	esac
	shift
done

if [ "${UID}" = 0 ]; then
	echo "[XX] Do not run this script as root!"
	if [ -n "${SUDO_USER}" ]; then
		echo "[--] Downgrading credentials to ${SUDO_USER}"
		exec sudo -u "${SUDO_USER}" sys/install.sh $*
	fi
	exit 1
fi

${MAKE} --help 2>&1 | grep -q gnu
if [ $? != 0 ]; then
	echo "You need GNU Make to build me"
	exit 1
fi

export MAKE="$MAKE"

[ -z "${INSTALL_TARGET}" ] && INSTALL_TARGET=symstall

# find root
cd "$(dirname "$0")" ; cd ..

# update
if [ "$1" != "--without-pull" ]; then
	if [ -d .git ]; then
		git branch | grep "^\* master" > /dev/null
		if [ $? = 0 ]; then
			echo "WARNING: Updating from remote repository"
			git pull
		fi
	fi
else
	export WITHOUT_PULL=1
	shift
fi

umask 0002

export NOSUDO
if [ -n "${NOSUDO}" ]; then
	SUDO=""
else
	type sudo > /dev/null 2>&1 || NOSUDO=1
	SUDO=sudo
	[ -n "${NOSUDO}" ] && SUDO=
fi

if [ "$(id -u)" = 0 ]; then
	SUDO=""
else
	[ -n "${NOSUDO}" ] && SUDO="echo NOTE: sudo not found. Please run as root: "
fi

if [ "${USE_SU}" = 1 ]; then
	SUDO="/bin/su -m root -c"
fi

if [ "${M32}" = 1 ]; then
	./sys/build-m32.sh ${ARGS} && ${SUDO} ${MAKE} ${INSTALL_TARGET}
elif [ "${HARDEN}" = 1 ]; then
	# shellcheck disable=SC2048
	# shellcheck disable=SC2086
	./sys/build-harden.sh ${ARGS} && ${SUDO} ${MAKE} ${INSTALL_TARGET}
else
	# shellcheck disable=SC2048
	# shellcheck disable=SC2086
	./sys/build.sh ${ARGS} && ${SUDO} ${MAKE} ${INSTALL_TARGET}
fi
