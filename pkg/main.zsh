#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function k9s::pkg::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_K9S_PATH}"/pkg/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_K9S_PATH}"/pkg/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_K9S_PATH}"/pkg/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_K9S_PATH}"/pkg/helper.zsh

    # shellcheck source=/dev/null
    source "${ZSH_K9S_PATH}"/pkg/alias.zsh
}

k9s::pkg::main::factory
