Skip step 1, 2, 3 if venv and project folder already existed
1. Run _initialize.bat that installs Django, Decouple, DB URL & starts a project as project & creates .env and .gitignore & git init


2. Update project\project\settings.py (https://simpleisbetterthancomplex.com/series/2017/10/16/a-complete-beginners-guide-to-django-part-7.html)
(https://simpleisbetterthancomplex.com/series/2017/09/18/a-complete-beginners-guide-to-django-part-3.html)

	from decouple import config, Csv
	import dj_database_url

	SECRET_KEY = config('SECRET_KEY')
	DEBUG = config('DEBUG', default=False, cast=bool)
	ALLOWED_HOSTS = config('ALLOWED_HOSTS', cast=Csv())
	DATABASES = {
		'default': dj_database_url.config(
			default=config('DATABASE_URL')
		)
	}

	INSTALLED_APPS = [
	....
	'widget_tweaks',
	] 

	EMAIL_BACKEND = config('EMAIL_BACKEND', default='django.core.mail.backends.smtp.EmailBackend')
	EMAIL_HOST = config('EMAIL_HOST', default='')
	EMAIL_PORT = config('EMAIL_PORT', default=587, cast=int)
	EMAIL_HOST_USER = config('EMAIL_HOST_USER', default='')
	EMAIL_HOST_PASSWORD = config('EMAIL_HOST_PASSWORD', default='')
	EMAIL_USE_TLS = config('EMAIL_USE_TLS', default=True, cast=bool)

	DEFAULT_FROM_EMAIL = 'Django Boards <noreply@djangoboards.com>'
	EMAIL_SUBJECT_PREFIX = '[Django Boards] '

3. project\.env file (https://simpleisbetterthancomplex.com/series/2017/10/16/a-complete-beginners-guide-to-django-part-7.html)

SECRET_KEY=rqr_cjv4igscyu8&&(0ce(=sy=f2)p=f_wn&@0xsp7m$@!kp=d
ALLOWED_HOSTS=.djangoboards.com
DATABASE_URL=postgres://u_boards:BcAZoYWsJbvE7RMgBPzxOCexPRVAq@localhost:5432/django_boards
EMAIL_HOST=smtp.mailgun.org
EMAIL_HOST_USER=postmaster@mg.djangoboards.com
EMAIL_HOST_PASSWORD=ED2vmrnGTM1Rdwlhazyhxxcd0F



4.Stylesheet and Javascript included
	jquery-3.3.1.min.js
	project.js
	bootstrap.min.js
	bootstrap.min.css
	project.css




