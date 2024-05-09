#!/bin/bash

# Ensure the ODBC configuration directory exists
ODBCSYSINI=${HOME}/.apt/usr/lib/odbc/conf/
mkdir -p ${ODBCSYSINI}

# Write the ODBC driver configuration
cat > ${ODBCSYSINI}/odbc.ini <<EOF
[ODBC Driver 17 for SQL Server]
Description=Microsoft ODBC Driver 17 for SQL Server
Driver=/app/.apt/usr/lib/libmsodbcsql-17.5.so.2.1
UsageCount=1
EOF

echo "ODBC configuration has been set up at ${ODBCSYSINI}"
