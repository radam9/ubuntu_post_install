Ubuntu Post Install Scripts
===========================

A semi-automatic and interactive set of post-installation scripts for Ubuntu and its derivatives. You can use this project to install your favourite apps, set your preferred settings, and do minor housekeeping.

This project is free software; you can redistribute it and/or modify it under the terms of the [GNU General Public License](/LICENSE). If you have improvements, contributions to the [original](https://github.com/snwh/ubuntu-post-install) are much appreciated.

## Organization

This project is designed to be fairly modular (and not be one huge script) so you can easily delete or exclude bits/functions that you don't want to use.

 * [`data`](/data): files which are lists of packages<sup>&dagger;</sup> read by various functions.
 * [`functions`](/functions): the main functions of this scriptset. They should require little user-preference modification.
 * [`scripts`](/functions/scripts): functions for installing third-party applications that cannot be installed using the standard; APT(repo/ppa), Flatpak or Snap methods, and any other functionality that cannot be added to any of the lists in the `/data/` directory.

*<sup>&dagger;</sup>These lists are preferential and you should to update them with packages you prefer*

## Adding Functions

Adding additional functions is as easy as editing one of the many already included functions and simply changing the variables. Read the [README](/data/README.md) in the `/data/` folder for further details.

## Usage

You use these scripts, you can just run the main script from the root of the source folder:

    ./ubuntu-post-install-script.sh

Alternatively, if you use `bash` and cloned this to your home folder, add the following to your `.bashrc` to run this script on-demand.

    export PATH=${PATH}:~/ubuntu-post-install/
