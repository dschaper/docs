FROM python:3.7

COPY requirements.txt /mkdocs/
WORKDIR /mkdocs

RUN pip install --user -r requirements.txt