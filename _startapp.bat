@echo off

set /p app="Enter a new App name: "
cmd /k "cd venv\Scripts & activate & cd .. & cd .. & cd project & python manage.py startapp %app% & cd %app% & mkdir tests & move tests.py tests\ & cd tests & type NUL> __init__.py"