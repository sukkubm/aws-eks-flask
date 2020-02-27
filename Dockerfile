FROM python:3.8.1-slim-buster

COPY ./app /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
