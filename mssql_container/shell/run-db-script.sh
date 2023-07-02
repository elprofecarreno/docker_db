#!/bin/bash
# WAITING START MSSQL SERVER
echo ""WAIT_TIME_MSSQL: $WAIT_TIME_MSSQL""
sleep "$WAIT_TIME_MSSQL"

# CREATE SCHEMA FOR X SECONDS
# FOR .sql IN $SCRIPT_DIRECTORY
echo "########################################################################"
echo "########################################################################"
echo "########################################################################"
echo "########################### EXECUTE SCRIPT #############################"
echo "########################################################################"
echo ""
echo ""
echo "READ FOLDER: "
echo "$SCRIPT_DIRECTORY/"
echo ""
for script in "$SCRIPT_DIRECTORY/"*; do
    #VERIFIED EXTENSION .SQL
    if [ "${script##*.}" = "sql" ]; then
        #EXECUTE SCRIPT
        echo "########################################################################"
        echo "EXECUTE SCRIPT: "
        echo "$script"
        /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $MSSQL_SA_PASSWORD -i "$script"
        echo ""
        echo "########################################################################"
    fi
done
