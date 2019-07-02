FROM python:3.6.5
LABEL maintainer="halvong@yahoo.com"

#avoids buffered
ENV PYTHONBUFFERED 1


COPY ./requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY . /app

#creates user for running appl.
RUN adduser --disabled-login tom
USER tom
#CMD python manage.py runserver 0.0.0.0:8000
