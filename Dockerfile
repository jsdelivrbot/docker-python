FROM python:3.6-alpine

MAINTAINER kevin.marilleau@gmail.com

ADD https://rawgit.com/daimebag/docker-python/3.6/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python" ]
