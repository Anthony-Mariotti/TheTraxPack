#!/bin/sh

# Read the settings.
. ./LaunchSettings.sh

run_packwiz() {
    java -jar ${PACKWIZ_BOOT} -g -s server ${PACK_TOML}
}

# Start the server.
run_server() {
    java -server -Xms${MIN_RAM} -Xmx${MAX_RAM} ${JAVA_PARAMETERS} -jar ${SERVER_JAR} nogui
}

echo "The Trax Pack {{ TTP.VERSION }}"
echo "Checking for updates..."
run_packwiz

echo "Startin The Trax Pack Server..."
run_server
