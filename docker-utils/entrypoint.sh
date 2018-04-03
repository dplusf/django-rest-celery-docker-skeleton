#!/bin/bash

set -eoux pipefail

if [ "$1" == 'init' ]; then
    echo "Run Migrations"
    ${SITE_DIR}env/bin/python ${SITE_DIR}proj/src/manage.py makemigrations landing
    ${SITE_DIR}env/bin/python ${SITE_DIR}proj/src/manage.py migrate
    ${SITE_DIR}env/bin/python ${SITE_DIR}proj/src/manage.py loaddata ${SITE_DIR}proj/src/landing/fixtures/blacklists.yaml
    ${SITE_DIR}env/bin/python ${SITE_DIR}proj/src/manage.py collectstatic

elif [ "$1" == 'manage' ]; then
    shift
    echo "Manage.py $@"
    ${SITE_DIR}env/bin/python ${SITE_DIR}proj/src/manage.py $@
else
    exec "$@"
fi
