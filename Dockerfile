FROM python:3.10.4

WORKDIR /webApp

COPY ./requirements.txt /webApp/requirements.txt

RUN pip install -r /webApp/requirements.txt

COPY . /webApp

CMD [ "python3", "flask" , "run", "--host", "0.0.0.0", "--port", "5000" ]
