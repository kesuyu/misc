#!/bin/bash

function usage {
	cat <<EOF
$(basename ${0})

Description:
	template shellscript

Usage:
	$(basename ${0}) [command] [<options>]

Options:
	-v, --version	print $(basename ${0}) version
	-h, --help	print this

	-d, --debug	xtrace on
EOF
}

function version {
	echo "$(basename {0}) version 0.0.1 "
}

while [ $# -gt 0 ];
do
	case ${1} in
		--debug|-d)
			set -x
		;;

		--help|-h)
			usage
			exit 0
		;;

		--version|-v)
			version
			exit 0
		;;

		*)
			echo "[ERROR] Invarid option '${1}'"
			usage
			exit 1
		;;
	esac
	shift
done

exit 0
