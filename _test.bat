@ECHO OFF

cmd /k "cd venv\Scripts & activate & cd .. & cd .. & cd project & manage.py test --verbosity=2"