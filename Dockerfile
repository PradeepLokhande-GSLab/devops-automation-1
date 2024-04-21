FROM python:3.8-alpine

RUN mkdir /app

ADD app.py /app
ADD requirements.txt /app
WORKDIR /app

RUN pip install -r requirements.txt

CMD ["python", "app.py"]
