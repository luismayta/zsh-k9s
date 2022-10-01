#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function k9s::sync {
    message_info "k9s sync conf for ${K9S_PACKAGE_NAME}"
    rsync -avzh --progress "${ZSH_K9S_PATH}/conf/" "${K9S_CONF_DIR}/"
    message_success "sync for ${K9S_PACKAGE_NAME}"
}
