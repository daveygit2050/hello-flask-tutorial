FROM ubuntu

RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install python-dotenv flask

COPY app /app
COPY flask-app.py /flask-app.py

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
EXPOSE 5000
