#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines functions zsh-k9s for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
#
ZSH_K9S_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_K9S_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_K9S_PATH}"/core/main.zsh

# shellcheck source=/dev/null
source "${ZSH_K9S_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_K9S_PATH}"/pkg/main.zsh
