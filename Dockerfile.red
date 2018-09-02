FROM        python:3.7.0-slim
MAINTAINER  yeojin.dev@gmail.com

ENV         PROJECT_DIR             /srv/

RUN         apt -y update && apt -y dist-upgrade
RUN         apt -y install build-essential

WORKDIR     ${PROJECT_DIR}
COPY        ./app_red              ${PROJECT_DIR}

RUN         pip install --upgrade pip
RUN         pip install django

EXPOSE      7000

CMD         ./manage.py runserver 0:7000
