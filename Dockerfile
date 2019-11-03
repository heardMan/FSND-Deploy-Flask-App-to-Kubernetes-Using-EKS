FROM python:stretch
COPY . /
WORKDIR  /APP

RUN pip install -r requirements.txt

CMD [ "gunicorn","-b",":8080", "main:APP" ]