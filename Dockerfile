FROM ubuntu:18.04

ENV LANG C.UTF-8
RUN apt-get update && apt-get install -y python-pip libssl-dev libpq-dev git build-essential libfontconfig1 libfontconfig1-dev vim openjdk-11-jre-headless
RUN pip install setuptools pip bzt --upgrade --force-reinstall
COPY test.yml test.yml
ENTRYPOINT bzt test.yml
