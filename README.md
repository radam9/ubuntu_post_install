Ubuntu Post Install Scripts
===========================

This project is a modified version of [snhw's](https://github.com/snwh) GUI [ubuntu-post-install](https://github.com/snwh/ubuntu-post-install), the purpose is to create an automated version of the script to include in one's dotfiles.

The script is an automatic set of post-installation scripts for Ubuntu and its derivatives. You can use this project to install your favourite apps, set your preferred settings, and do minor housekeeping.

This project is free software; you can redistribute it and/or modify it under the terms of the [GNU General Public License](/LICENSE). If you have improvements, contributions to the [original](https://github.com/snwh/ubuntu-post-install) or the [modified](https://github.com/radam9/ubuntu_post_install) version are greatly appreciated.

## Organization

This project is designed to be fairly modular (and not be one huge script) so you can easily delete or exclude bits/functions that you don't want to use.

 * [`data`](/data): files which are lists of packages, gsettings and fonts<sup>&dagger;</sup> read by various functions.
 * [`fonts`](/data/fonts): `.ttf` and `.otf` font files that will be installed by the `install_fonts()` function found in [`install_functions`](/functions/install_functions).
 * [`scripts`](/data/scripts): functions for installing third-party applications that cannot be installed using the standard; APT(repo/ppa), Flatpak or Snap methods, and any other functionality that cannot be added to any of the lists in the [`/data`](/data) directory.
 * [`functions`](/functions): the main functions of this scriptset. They should require little user-preference modification.

*<sup>&dagger;</sup>These lists are preferential and you should update them with packages you prefer before running the script.*

## Adding Functions

Adding additional functions is as easy as editing one of the many already included functions and simply changing the variables. Read the two README files ([README](/data/README.md) - [README](/functions/README.md))in the [`data`](/data) and [`functions`](/functions) folders respectively for further details.

## Usage

First modify the content (lists/scripts/fonts) of the [`data`](/data) folder to fit your needs.

Then to use these scripts, you can just run the main script from the root of the source folder:

    ./ubuntu-post-install-script.sh

**NOTE:** *Do not run the script using `sudo` as some functions like `gsettings` don't function properly when executed using `sudo`, the script will envoke `sudo` when needed.*
