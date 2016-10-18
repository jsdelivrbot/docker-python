FROM python:3.6-alpine

MAINTAINER kevin.marilleau@gmail.com

WORKDIR /home

RUN apk add -U --no-cache ca-certificates \
                               build-base \
                                  libxml2 \
                              libxml2-dev \
                                  libxslt \
                              libxslt-dev \
                                     make \
                               python-dev \
                                   py-pip

ADD https://rawgit.com/daimebag/docker-python/master/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN rm requirements.txt

CMD [ "python" ]
