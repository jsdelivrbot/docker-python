FROM python:3.6-alpine

MAINTAINER kevin.marilleau@gmail.com

WORKDIR /home
ADD https://rawgit.com/daimebag/docker-python/3.6/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN rm requirements.txt

CMD [ "python" ]
