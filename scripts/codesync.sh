#!/bin/bash

#Source and destionation
SOURCE="/mnt/c/Users/gug.BIM/Desktop/Documentation/_Script_/"
DESTINATION="/mnt/c/Users/gug.BIM/Desktop/Documentation/DevOps/ITI_Project/"

#Exclude list
EXCLUDE_LIST=(
	"*.gitignore"
	".git/"
    ".vscode"
    "InstallApps.ps1"
    "SoftwareUpdate.ps1"
	"PC_OU.ps1"
	"test.ps1"
	"Exchange-User2Mailbox.ps1"
	"OIDCreator.vbs"
    "ServerFirstSetup.ps1"
	"_CurrentScript.ps1"
	"WorkMadeEasy.psm1"
)

#Construct exclude Parameters
EXCLUDE_PARAMS=()
for EXCLUDE in "${EXCLUDE_LIST[@]}"; do
    EXCLUDE_PARAMS+=("--exclude=$EXCLUDE")
done



rsync -avz "${EXCLUDE_PARAMS[@]}" "$SOURCE" "$DESTINATION"
