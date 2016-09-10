FROM python:3-onbuild

MAINTAINER kevin.marilleau@gmail.com

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY requirements.txt /usr/src/app/
ONBUILD RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python" ]
