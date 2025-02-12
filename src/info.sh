#!/bin/bash
# Version 1.2

METADATA_FILE="/var/www/html/META/METADATA.txt"

get_value() {
    grep "^\[$1\]:" "$METADATA_FILE" | cut -d":" -f2- | tr -d "[]{}"
}

PROJECT_NAME=$(get_value "ProjectName")
DESCRIPTION=$(get_value "Description")
VERSION=$(get_value "Version")
RELEASE_DATE=$(get_value "Release")
AUTHOR=$(get_value "Autor")
LICENSE=$(get_value "License")
PLATFORM=$(get_value "ServerPlatform")
REPO=$(get_value "Repository")
WEBSITE=$(get_value "Website")

echo "Projektname: $PROJECT_NAME"
echo "Beschreibung: $DESCRIPTION"
echo "Version: $VERSION"
echo "Veröffentlicht am: $RELEASE_DATE"
echo "Autor(en): $AUTHOR"
echo "Lizenz: $LICENSE"
echo "Server-Plattform: $PLATFORM"
echo "Repository: $REPO"
echo "Website: $WEBSITE"
