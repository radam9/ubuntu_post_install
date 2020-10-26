#!/bin/bash

# setup variables => data_folder
base_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
data_dir="${base_dir}/data"
scripts_dir="${data_dir}/scripts"
functions_dir="${base_dir}/functions"

# Import all the functions and scripts
#
# ${1} = directory
function import_functions {
	# iterate through the files in the 'functions' folder
	for FUNCTION in ${1}/*; do
		# skip directories
		if [[ -d $FUNCTION ]]; then
			continue
		# exclude markdown readmes
		elif [[ $FUNCTION == *.md ]]; then
			continue
		# exclude lists
		elif [[ $FUNCTION == *.list ]]; then
			continue
		elif [[ -f $FUNCTION ]]; then
			. $FUNCTION
		fi
	done
}
import_functions $data_dir
import_functions $functions_dir
import_functions $scripts_dir

echo_message welcome "Ubuntu Post-Install Script"

system_checks
# purge unwanted apps
# `purge_apts` after `purge_snaps` to not remove `snapd` before removing snap packages.
purge_snaps
purge_apts
# remove orphan packages, remove leftovers and clean apt cache
system_cleanup
# add repos APT/PPA
install_apt_repos
install_ppa_repos
# refreshing the repository information is not needed since `add-apt-repository`
# automatically updates the cache if not provided the `-k` option. (26/10/2020)
# echo_message info "Refreshing repository information..."
# sudo apt update -y
# install applications
install_from_list "APT Application" "apps_apt"
install_flatpak_apps
install_snap_apps
# apply scripts [custom apps, post_install] from `data/scripts` directory.
install_poetry
post_app_install_functions
# fonts from list.
install_from_list "Fonts" "fonts"
# font `ttf/otf` files from `data/fonts` directory.
install_fonts
# gsettings [apps, ubuntu]
gsettings_config "gsettings_apps"
gsettings_config "gsettings_ubuntu"
# clean up after all installations.
system_cleanup