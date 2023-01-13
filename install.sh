#!/bin/bash

if [[ -n "$NVIM_CONFDIR" ]]; then
  NVIM_CONFIG_DIRECTORY_PATH=$NVIM_CONFDIR
fi
  
if [[ "$NVIM_CONFIG_DIRECTORY_PATH" = "" ]]; then
  NVIM_CONFIG_DIRECTORY_PATH="/home/$USER/.config/nvim"
fi

if [[ -n "$CUSTOM_NVCHAD_URL" ]]; then
  CUSTOM_NVCHAD_CONFIGURATION_GIT_REPOSITORY_URL="$CUSTOM_NVCHAD_URL"
fi
if [[ -z "$CUSTOM_NVCHAD_CONFIGURATION_GIT_REPOSITORY_URL" ]]; then
  CUSTOM_NVCHAD_CONFIGURATION_GIT_REPOSITORY_URL="ssh://git@github.com/prevostcorentin/nvchad-configuration"
fi

if [[ -z "$IS_CLONING_NVCHAD" ]]; then
  IS_CLONING_NVCHAD=1 
fi


if [[ $IS_CLONING_NVCHAD -ge 0 ]]; then
  git clone https://github.com/NvChad/NvChad \
            "$NVIM_CONFIG_DIRECTORY_PATH"
fi

git clone "$CUSTOM_NVCHAD_CONFIGURATION_GIT_REPOSITORY_URL" \
          "$NVIM_CONFIG_DIRECTORY_PATH/lua/custom"
