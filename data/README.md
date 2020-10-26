Data Lists
==========

These lists are referred to in functions throughout this set of scripts and serve in place of in-line arrays in order to genericize this project.

Their contents are user-generated and should be updated or changed in forked versions to reflect the preferences of the fork's author.

- You should add `flatpak` and `snapd` to `apps_apt.list` if you are going to populate and use the `apps_snap.list` and `purge_snap.list` lists.

Any line that starts with a `#` will be ignored during the installation proccess.

| List-Name        | Description                                                             |
| :--------------- | :---------------------------------------------------------------------- |
| apps_apt         | List containing the `apt` applications.                                 |
| apps_flatpak     | List containing the `flatpak` applications.                             |
| apps_snap        | List containing the `snap` applications.                                |
| dependencies     | List containing the dependencies this script needs to run successfully. |
| fonts            | List containing the fonts to be installed using `apt`.                  |
| gsettings_apps   | List containing the application settings.                               |
| gsettings_ubuntu | List containing the system (distro specific) settings.                  |
| purge_apt        | List containing the `apt` applications to be purged.                    |
| purge_snap       | List containing the `snap` applications to be purged.                   |
| repos_apt        | List containing the `apt` repositories.                                 |
| repos_ppa        | List containing the `ppa` repositories.                                 |


### # `scripts` directory
The scripts directory contains functions/scripts for applications or any other functionality that cannot be added to any of the above lists.

To add a new application/functionality:
1. Create a new script file.
2. Structure your functionality in the form of a function or script file.
3. If your file is in the form of a script file, it will be executed automatically at the start of the main `ubuntu-post-install.sh` script, when being imported.
4. If your file is the form of a function, you can add the function to be executed in the main `ubuntu-post-install.sh` script at the desired order. (for more control on when you want it to be executed.)