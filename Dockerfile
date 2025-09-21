FROM ghcr.io/astral-sh/uv:0.8.14-python3.13-bookworm-slim

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

RUN apt-get update && apt-get install libpq-dev build-essential -y

RUN mkdir /code
WORKDIR /code

COPY app /code/app
COPY entrypoints /code/entrypoints
COPY manage.py /code/
COPY pyproject.toml /code/
COPY uv.lock /code/

RUN uv sync --frozen

# EXPOSE 80
ENTRYPOINT ["entrypoints/entrypoint.sh"]
