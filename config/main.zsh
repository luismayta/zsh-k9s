#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function k9s::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_K9S_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_K9S_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_K9S_PATH}"/config/linux.zsh
      ;;
    esac
}

k9s::config::main::factory