FROM python:3.5-alpine

MAINTAINER kevin.marilleau@gmail.com

ADD https://rawgit.com/daimebag/docker-python/master/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python" ]
