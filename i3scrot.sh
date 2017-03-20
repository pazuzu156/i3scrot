#!/bin/bash
CONFIG=${HOME}/.config/i3/i3scrot.conf

if ! [ -f ${CONFIG} ] ; then
    echo "SCREENSHOTS_DIR=\${HOME}/Pictures/Screenshots" > ${CONFIG}
fi

source ${CONFIG}

APPNAME="i3scrot"
SSDIR=${SCREENSHOTS_DIR}
SSPATH=${SSDIR}/Screenshot_$(date "+%Y-%m-%d_%H-%M-%S").png
SSMSG="Screeshot saved at ${SSPATH}"
VERSION=1.0
CREATOR="Kaleb Klein <klein.jae@gmail.com>"
VERSIONMSG="${APPNAME}
Version: ${VERSION}
Created By: ${CREATOR}
"
HELPMSG="This shell script allows using scrot easily anywhere.
Built for easy use in i3

Options:
--fullscreen | -f - Take fullscreen screenshot (default)
--window     | -w - Take screenshot of active window
--select     | -s - Take screenshot of selected region
--help       | -h - Display this help message

Screenshots are placed in ${SSDIR}
"

# Create screenshots dir if not exist
if ! [ -d ${SSDIR} ] ; then
    mkdir ${SSDIR}
fi

if [ -z ${NOTIFY+x} ] ; then
    NOTIFY=false
fi

# get cmd args
case "$1" in
    --fullscreen|-f|$NULL)
        scrot ${SSPATH}
        ;;
    --window|-w)
        scrot -u ${SSPATH}
        ;;
    --select|-s)
        scrot -s ${SSPATH}
        ;;
    --help|-h)
        echo "${HELPMSG}"
        ;;
    --version|-v)
        echo "${VERSIONMSG}"
        ;;
    *)
        echo "Invalid arguments!

${HELPMSG}"
        ;;
esac

# Do you wanna notify?
if ${NOTIFY} ; then
    notify-send -a ${APPNME} -u normal "${SSMSG}"
else
    echo "${SSMSG}"
fi

