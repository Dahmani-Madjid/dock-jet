FROM python:3.7-slim-buster

MAINTANER Insim "dahmani.madjid@outlook.dz"

WORKDIR /app
COPY app.py requirements.txt

RUN apt update && apt install -y python3-pip
COPY . ./
RUN pwd && ls && pip3 install -r requirements.txt --no-cache-dir

EXPOSE 8000

ENTRYPOINT [ "python3.7", "./app.py" ]

