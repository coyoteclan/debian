#!/bin/bash
cd /home/container

# Output Current Java Version
source /etc/os-release;echo $PRETTY_NAME ## only really needed to show what version is being used. Should be changed for different applications

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
${MODIFIED_STARTUP}
