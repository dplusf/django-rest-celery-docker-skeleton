from __future__ import absolute_import, unicode_literals
from celery import Celery
import os

# set the default Django settings module for the 'celery' program.
# https://stackoverflow.com/questions/36755583/cant-import-django-model-into-celery-task
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'hello.settings')

app = Celery('landing',
             broker='amqp://guest:guest@rabbitmq:5672//',
             # Define your tasks in tasks.py and uncomment the line when ready
             # include=['landing.tasks'],
             backend = 'django-db',
             CELERY_RESULT_BACKEND = 'django-db'
             )

# Optional configuration, see the application user guide.
app.conf.update(
    result_expires=3600,
)

if __name__ == '__main__':
    app.start()
