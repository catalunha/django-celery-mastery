uv init
uv sync
django-admin startproject app .

docker compose up -d --build

(django-celery-mastery) catalunha@pop-os:~/apps/django-celery-mastery-course/django-celery-mastery$ docker compose up

(django-celery-mastery) catalunha@pop-os:~/apps/django-celery-mastery-course/django-celery-mastery$ docker exec -it django /bin/bash
root@224bfa119ccf:/code# ls
app  db.sqlite3  entrypoints  manage.py  pyproject.toml  uv.lock

root@224bfa119ccf:/code# uv run python manage.py createsuperuser
Username (leave blank to use 'root'): admin
Email address: admin@django.com
Password: a
Password (again): a
This password is too short. It must contain at least 8 characters.
This password is too common.
Bypass password validation and create user anyway? [y/N]: y
Superuser created successfully.

catalunha@pop-os:~/apps/django-celery-mastery-course/django-celery-mastery$ docker exec -it django /bin/bash
root@9790be9eb0c1:/code# ls
app  cworker  db.sqlite3  entrypoints  manage.py  pyproject.toml  uv.lock
root@9790be9eb0c1:/code# cd app/
root@9790be9eb0c1:/code/app# uv run django startapp cworker
error: Failed to spawn: `django`
  Caused by: No such file or directory (os error 2)
root@9790be9eb0c1:/code/app# uv run django-admin startapp cworker
root@9790be9eb0c1:/code/app# 
