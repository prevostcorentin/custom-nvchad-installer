# custom-nvchad-installer

Script to install a custom NvChad from a git configured custom configuration. Targeting [my configuration](https://github.com/prevostcorentin/nvchad-configuration) by default.

## Installation

```bash
[./custom-nvchad-installer] > NVIM_CONFDIR="[...]" \
                              IS_CLONING_NVCHAD=1 \
                              CUSTOM_NVCHAD_URL="[...]" \
                              ./install.sh
```

### Default parameters value

`IS_CLONING_NVCHAD` = 1
`NVIM_CONFDIR` = `NVIM_CONFIG_DIRECTORY_PATH` = /home/$USER/.config/nvim
`CUSTOM_NVCHAD_URL` = `CUSTOM_NVCHAD_CONFIGURATION_GIT_REPOSITORY_URL` = ssh://git@github.com/prevostcorentin/nvchad-configuration
