#!/bin/bash
./genspec.sh

BRANCH=`git branch | grep "*" | cut -d" " -f2`

#if [[ $BRANCH == "normative" ]]; then
#    BRANCH=
#else
#    BRANCH="-$BRANCH"
#fi

CELLML_MEMBER=`cat ~/.cellml_member`

URL="http://www.cellml.org/Members/$CELLML_MEMBER/draft-secondary-spec-dae-events/"

echo -e "delete toplevel.xhtml\nput toplevel.xhtml\nquit" | cadaver $URL
