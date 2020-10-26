Functions
=========

Instead of being consolidated into one huge file, this script set is modular and these functions are called through the project so they can easily be modified, excluded or removed.

### General Functions

Contains frequently used functions.

 * [`add_repositories`](add_repositories) is used for adding apt, flatpak and Launchpad PPA repositories.
 * [`check_functions`](check_functions) contains various functions that check the project dependencies (os - distribution - packages - user privileges), as well as checking package status (installed or not).
 * [`echo_messages`](echo_messages) is used for coloured `echo` messages.

### Install Functions

Contains the installation functions.

 * [`install_functions`](install_functions) contains generic functions for installing a single APT/Flatpak/Snap package, installing a list of APT/Flatpak/Snap packages, installing the gsettings and installing fonts. All the installations are done using the lists in the [`data`](/data) directory.

### System Functions

Contains system maintentance and cleanup functions.

 * [`system_cleanup`](system_cleanup) contains a variety of functions that cleanup and maintain the os. Purge functions to remove apts and snaps (using the lists in [`data`](/data)), functions for removing orphaned packages resulting from package uninstallations, removal of files leftover after package removal and functions to clean up the system cache.