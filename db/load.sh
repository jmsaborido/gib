#!/bin/sh

BASE_DIR=$(dirname "$(readlink -f "$0")")
if [ "$1" != "test" ]; then
    psql -h localhost -U gib -d gib < $BASE_DIR/gib.sql
fi
psql -h localhost -U gib -d gib_test < $BASE_DIR/gib.sql
