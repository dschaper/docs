FROM alpine

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/.local/bin

COPY requirements.txt /mkdocs/
WORKDIR /mkdocs

RUN apk --update upgrade \
&& apk --no-cache --no-progress add git py3-pip \
&& rm -rf /var/cache/apk/* \
&& pip3 install --user -r requirements.txt