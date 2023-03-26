FROM python:3.10.4

WORKDIR /app/envFlask

COPY ./requirements,txt /app/envFlask/

RUN pip install -r /app/envFlask/requirements.txt

COPY ./envFlask /app/envFlask

CMD [ "app.py", "runserver", "--host", "0.0.0.0", "--port", "5000" ]
