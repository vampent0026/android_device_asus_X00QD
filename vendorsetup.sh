#!/bin/bash

# Function to clone or update a repository
clone_or_update_repo() {
    local repo_url=$1
    local branch=$2
    local target_dir=$3

    # Remove the existing directory if it exists
    if [ -d "$target_dir" ]; then
        echo "Removing existing directory $target_dir"
        rm -rf "$target_dir"
    fi

    # Clone the repository
    echo "Cloning repository $repo_url into $target_dir"
    git clone "$repo_url" -b "$branch" "$target_dir"
}

# Clone the Asus firmware repository
clone_or_update_repo "https://gitlab.com/dragonsxbr/vendor_asus-firmware" "twelve-wip" "vendor/asus-firmware"
