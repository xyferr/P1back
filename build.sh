#!/bin/bash

# Ensure pip is installed
echo "Installing pip if not present..."
python3.11 -m ensurepip --upgrade

# Build the project
echo "Building the project..."
python3.11 -m pip install --upgrade pip
python3.11 -m pip install -r requirements.txt

cd portback
echo "Make Migrations..."
python3.11 manage.py makemigrations --noinput
python3.11 manage.py migrate --noinput

echo "Collect Static..."
python3.11 manage.py collectstatic --noinput --clear


