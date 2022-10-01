#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function zsh-k9s::core::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_K9S_PATH}"/core/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_K9S_PATH}"/core/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_K9S_PATH}"/core/linux.zsh
      ;;
    esac
}

zsh-k9s::core::main::factory