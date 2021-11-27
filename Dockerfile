FROM python:3.8
LABEL maintainer="Nikita Krivda <nikita-krivda@yandex.ru>"
WORKDIR /app
COPY . .
RUN python3 -m pip install --upgrade pip
RUN pip3 install gunicorn
RUN pip3 install -r requirements.txt

EXPOSE 8000
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000