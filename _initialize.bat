@ECHO OFF

REM Install Django, Decouple, Database-url, Widget-tweaks(more control over the rendering process)
REM Start a project as Project
REM Create .env and .gitignore
cmd /k "virtualenv venv & cd venv\Scripts & activate & pip install django python-decouple dj-database-url django-widget-tweaks & cd .. & cd .. & django-admin startproject project & cd project & mkdir static templates & type NUL> .env & type NUL> .gitignore & git init"
