#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function k9s::internal::main::factory {
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

k9s::internal::main::factory

if ! core::exists k9s; then core::install k9s; fi
