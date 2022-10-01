#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function zsh-k9s::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_K9S_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_K9S_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_K9S_PATH}"/internal/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_K9S_PATH}"/internal/helper.zsh
}

zsh-k9s::internal::main::factory
