FROM python:alpine

ADD ./requirements.txt /opt/webapp/
WORKDIR /opt/webapp
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ADD . /opt/webapp

EXPOSE 9000

ENTRYPOINT ["python", "app.py"]
