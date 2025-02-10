#!/bin/bash

# Setze die Pfade
repo_url="https://github.com/HansKnolle08/gameandmore.eu_server_skripts.git"
temp_dir="/gameandmore.eu_server_skripts"
scripts_dir="/scripts"

# Repository klonen
git clone "$repo_url" "$temp_dir"

# Überprüfen, ob der Inhalt von /gameandmore.eu_server_skripts/src/ mit /scripts/ identisch ist
if diff -qr "$temp_dir/src" "$scripts_dir" > /dev/null; then
    echo "Die Inhalte sind identisch. Kopiere Dateien nach /scripts."

    # Kopiere den Inhalt von /gameandmore.eu_server_skripts/src/ nach /scripts/
    cp -r "$temp_dir/src/" "$scripts_dir/"

    # Lösche das temporäre Repository
    rm -rf "$temp_dir"
else
    echo "Die Inhalte sind nicht identisch. Lösche das temporäre Repository ohne weitere Änderungen."
    
    # Lösche das temporäre Repository ohne Änderungen vorzunehmen
    rm -rf "$temp_dir"
fi

# Abschlussmeldung
echo "Update-Skript abgeschlossen."
