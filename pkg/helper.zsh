#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

# editk9s edit settings for k9s
function editk9s {
    if [ -z "${EDITOR}" ]; then
        message_warning "it's neccesary the var EDITOR"
        return
    fi
    "${EDITOR}" "${K9S_FILE_SETTINGS}"
}
