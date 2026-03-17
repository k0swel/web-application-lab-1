#!/bin/bash

site_dir=/home/debian/frontend
executable_file=/app/app.py

source $site_dir/.venv/bin/activate
cd $site_dir/app
. $site_dir/.env
gunicorn --workers 4 -b 0.0.0.0:80 'app:app'
