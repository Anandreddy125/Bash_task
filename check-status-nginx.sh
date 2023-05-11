#!/bin/bash
#nginx server is running or not running.
#Owner=Anand
#Status of service
#
STATUS="$(systemctl is-active nginx.service)"
if [ "${STATUS}" = "active" ]; then
    echo "nginx service is running ....."
else
    echo " Service not running "
    
fi
