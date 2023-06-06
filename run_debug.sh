poetry config virtualenvs.create false && poetry install
poetry run ./manage.py migrate
poetry run ./manage.py runserver_plus 0:8053