FROM python:3.5-alpine

MAINTAINER kevin.marilleau@gmail.com

ADD https://rawgit.com/daimebag/docker-python/master/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Add lxml lib
RUN wget http://nl.alpinelinux.org/alpine/edge/main/x86_64/py-lxml-3.6.4-r0.apk -O /var/cache/apk/py-lxml.apk
RUN apk add --allow-untrusted /var/cache/apk/py-lxml.apk
# And remove tmp files
RUN rm -rf /var/cache/apk/*

CMD [ "python" ]
