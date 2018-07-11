@ECHO OFF
cmd /k "cd venv\Scripts & activate & cd .. & cd .. & pip freeze > project/requirements.txt"