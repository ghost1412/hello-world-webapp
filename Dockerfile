FROM python
WORKDIR /app
ADD . /app

COPY . /app

RUN pip install -r requirements.txt

CMD gunicorn app:app
