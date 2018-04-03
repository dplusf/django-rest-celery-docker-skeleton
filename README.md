# Django Rest Celery Docker Skeleton

Skeleton for containerized Django Project with DRF, Celery, PostgreSQL and RabbitMQ...

There is a hello world django app in src folder as a example.

## Container

+ Django 1.11.12 + DRF (Django Rest Framework)
+ Postgres
+ Nginx
+ Celery
+ RabbitMQ


## Quickstart

```
docker-compose up
```

## Environment
The file [env](env) contains the Environment Variables for setting up postgres user & db. Pay attention to you django settings.py to reflect same settings.
