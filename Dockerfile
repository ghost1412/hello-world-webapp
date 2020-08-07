FROM python:3-7

RUN pip install --upgrade pip

ADD requirements.txt /app/

RUN pip install -r /app/requirements.txt

ADD . /app
WORKDIR /app

EXPOSE 8000

CMD ["gunicorn" "app:app"]
