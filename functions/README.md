Functions
=========

Instead of being consolidated into one huge file, this script set is modular and these functions are called through the project so they can be easily excluded or removed.

### General Functions

Contains frequently used functions.

 * [`add_repositories`](add_repositories) is used for adding apt, flatpak and Launchpad PPA repositories.
 * [`check_functions`](check_functions): contains the various functions that check the project prerequisites but also functions to check if packages are installed or if repositories have been added to the system.
 * [`echo_messages`](echo_messages) is used for fancy coloured `echo` messages.

### Install Functions

Pretty self-explanatory, all the installation functions.

 * [`install_fonts`](install_fonts) is used for installing fonts.
 * [`install_functions`](install_functions) contains generic functions for installing a single APT/Flatpak/Snap package or installing a list of APT/Flatpak/Snap packages or installing the gsettings. All the installations are done using the lists in the `/data/` directory.

### System Functions

A few basic maintenance and setup functions

 * [`system_cleanup`](system_cleanup) has a few functions for basic cleanup of the system's package management.
 * [`system_configure`](system_configure) contains functions used to a set your preferred settings.