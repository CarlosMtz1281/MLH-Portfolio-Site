#FROM quay.io/centos/centos:stream9
#RUN dnf install -y python3.9
FROM python:3.9-slim-buster

WORKDIR /myportfolio

COPY requirements.txt .

#RUN dnf install -y python3 python3-pip

RUN pip3 install -r requirements.txt

COPY . .

CMD ["flask", "run", "--host=0.0.0.0"]

EXPOSE 5000

