@ECHO OFF
cmd /k "cd venv/Scripts & activate & cd .. & cd .. & cd project & python manage.py makemigrations & python manage.py migrate"