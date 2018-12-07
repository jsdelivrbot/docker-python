FROM python:3.5

MAINTAINER kevin.marilleau@gmail.com

WORKDIR /home

ADD https://cdn.jsdelivr.net/gh/daimebag/docker-python/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN rm requirements.txt

CMD [ "python" ]
