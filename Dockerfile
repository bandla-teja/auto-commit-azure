FROM ubuntu
RUN apt-get update && apt-get -y install python3 python3-pip
RUN pip3 install flask flask-mysql
COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080