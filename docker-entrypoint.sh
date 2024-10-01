#!/bin/bash

#until cd /app && python manage.py dbshell
#do
#  echo "Waiting for PostgreSQL to start..."
#  sleep 2
#done

python manage.py makemigrations --noinput
python manage.py migrate

python manage.py runserver 0.0.0.0:8000