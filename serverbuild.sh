#!/bin/bash
# Script to call all script

# Call the Base Config script
/bin/bash ./Baseconfig/baseconfig.sh

# Call the App Config script
/bin/bash ./Appconfig/appconfig.sh

# Call the Database Config script
/bin/bash ./DBconfig/dbconfig.sh

# Call the Web App Config script
/bin/bash ./Webappconfig/webappconfig.sh

# Call the Monitoring Config script
/bin/bash ./Monitoring/monitoring.sh
