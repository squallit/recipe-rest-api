FROM python:3.7-alpine
MAINTAINER Squallit

ENV PYTHONUNBUFFERED 1

# Install dependencies from requirements.txt
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Setup directory structure
RUN mkdir /app
WORKDIR /app
COPY ./app/ /app

RUN adduser -D user
USER user
