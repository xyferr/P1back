#!/bin/bash

# Ensure pip is installed
echo "Installing pip if not present..."
python3.9 -m ensurepip --upgrade

# Build the project
echo "Building the project..."
python3.9 -m pip install --upgrade pip
python3.9 -m pip install -r ../requirements.txt

cd portback
echo "Make Migrations..."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

echo "Collect Static..."
python3.9 manage.py collectstatic --noinput --clear


