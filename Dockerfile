FROM python:stretch
COPY . /
WORKDIR /

RUN pip install -r requirements.txt

CMD [ "gunicorn","-b",":8080", "main:APP" ]