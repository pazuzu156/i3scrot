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
--desk   | -d - Take fullscreen screenshot (default)
--window | -w - Take screenshot of active window
--select | -s - Take screenshot of selected region
--help   | -h - Display this help message

Screenshots are placed in ${SSDIR}
"

# Create screenshots dir if not exist
if ! [ -d ${SSDIR} ] ; then
    mkdir ${SSDIR}
fi

# get cmd args
case "$1" in
    --desk|-d|$NULL)
        scrot ${SSPATH}
        notify-send -a ${APPNAME} -u normal "${SSMSG}"
        ;;
    --window|-w)
        scrot -u ${SSPATH}
        notify-send -a ${APPNAME} -u normal "${SSMSG}"
        ;;
    --select|-s)
        scrot -s ${SSPATH}
        notify-send -a ${APPNAME} -u normal "${SSMSG}"
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

