#!/bin/bash

# Step 1: Go to the home directory
cd ~

# Step 2: Download repo containing the config files
git clone https://github.com/flynneastwood/BlenderConfigs

# Step 3: Define paths to custom configuration files
CUSTOM_USERPREF="$HOME/BlenderConfigs/userpref.blend"
CUSTOM_STARTUP="$HOME/BlenderConfigs/startup.blend"

# Step 4: Get the Blender version
BLENDER_VERSION=$(blender --version | awk 'NR==1 {print $2}' | awk '{print substr($0,1,3)}')

# Step 5: Create version specific config folder
CONFIG_FOLDER="$HOME/.config/blender/$BLENDER_VERSION"
mkdir -p "$CONFIG_FOLDER"

# Step 6: Create "config" folder inside version specific config folder
CONFIG_FOLDER="$CONFIG_FOLDER/config"
mkdir -p "$CONFIG_FOLDER"

# Step 7: Copy custom configuration files to "config" folder
cp "$CUSTOM_USERPREF" "$CONFIG_FOLDER"
cp "$CUSTOM_STARTUP" "$CONFIG_FOLDER"

echo "Blender configuration has been set up with your custom configuration files."
