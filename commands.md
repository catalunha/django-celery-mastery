uv init
uv sync
django-admin startproject app .

(django-celery-mastery) catalunha@pop-os:~/apps/django-celery-mastery-course/django-celery-mastery$ docker compose up

(django-celery-mastery) catalunha@pop-os:~/apps/django-celery-mastery-course/django-celery-mastery$ docker exec -it django /bin/bash
root@224bfa119ccf:/code# ls
app  db.sqlite3  entrypoints  manage.py  pyproject.toml  uv.lock
root@224bfa119ccf:/code# A