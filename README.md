# kbvim

Yet another neovim configuration

## Requirements

Neovim 12.x

## Installation And Usage

To test out the config files, clone this repository into the `~/.config/` directory in Unix-like systems (no Windows test support for now). Then run debug.sh to run Neovim with these config files.

To install the configuration files:

1. Add the following to your .bashrc, .zshrc, or other similar shell config file (or just run in the current session to test): `export NVIM_APPNAME=kbvim`
2. Run `nvim`
3. Wait for all plugins to install, and use `<cmd>TSInstall language` to install desired language parsers

### Alternate Approach

1. Clone this repository into `~/.config/`, overriding the directory name to be `nvim` instead of `kbvim`.
