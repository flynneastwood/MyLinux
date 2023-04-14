#!/bin/bash

# Change to the user's home directory
cd ~

# Download my config files from Github
sudo git clone https://github.com/flynneastwood/BlenderConfigs

# Define the paths to your custom configuration files
CUSTOM_USERPREF="$HOME/BlenderConfigs/userpref.blend"
CUSTOM_STARTUP="$HOME/BlenderConfigs/startup.blend"

# Create the Blender configuration directory if it doesn't exist
BLENDER_CONFIG_DIR="$HOME/.config/blender"
mkdir -p "${BLENDER_CONFIG_DIR}"

# Find the installed Blender version
BLENDER_VERSION=$(ls "${BLENDER_CONFIG_DIR}")

# Create the version-specific configuration directory if it doesn't exist
VERSION_CONFIG_DIR="${BLENDER_CONFIG_DIR}/${BLENDER_VERSION}/config"
mkdir -p "${VERSION_CONFIG_DIR}"

# Copy the custom configuration files to the Blender configuration directory
cp "${CUSTOM_USERPREF}" "${VERSION_CONFIG_DIR}/userpref.blend"
cp "${CUSTOM_STARTUP}" "${VERSION_CONFIG_DIR}/startup.blend"

echo "Blender has been configured with your custom preferences."
