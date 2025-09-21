#!/bin/bash

echo "Apply database migrations"
uv run python manage.py migrate

exec "$@"
