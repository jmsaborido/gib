#!/bin/sh

if [ "$1" = "travis" ]; then
    psql -U postgres -c "CREATE DATABASE gib_test;"
    psql -U postgres -c "CREATE USER gib PASSWORD 'gib' SUPERUSER;"
else
    sudo -u postgres dropdb --if-exists gib
    sudo -u postgres dropdb --if-exists gib_test
    sudo -u postgres dropuser --if-exists gib
    sudo -u postgres psql -c "CREATE USER gib PASSWORD 'gib' SUPERUSER;"
    sudo -u postgres createdb -O gib gib
    sudo -u postgres psql -d gib -c "CREATE EXTENSION pgcrypto;" 2>/dev/null
    sudo -u postgres createdb -O gib gib_test
    sudo -u postgres psql -d gib_test -c "CREATE EXTENSION pgcrypto;" 2>/dev/null
    LINE="localhost:5432:*:gib:gib"
    FILE=~/.pgpass
    if [ ! -f $FILE ]; then
        touch $FILE
        chmod 600 $FILE
    fi
    if ! grep -qsF "$LINE" $FILE; then
        echo "$LINE" >> $FILE
    fi
fi
