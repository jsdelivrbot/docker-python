FROM python:3.5-alpine

MAINTAINER kevin.marilleau@gmail.com

ADD https://rawgit.com/daimebag/docker-python/test/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN apk add --no-cache py-lxml

CMD [ "python" ]
