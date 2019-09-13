FROM python:3.7-alpine
LABEL author="Henry Valbuena"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# Use a non root user
RUN adduser -D user
USER user




