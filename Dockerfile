FROM lambci/lambda:build-python3.6
RUN mkdir /python
    # && apk add python3-dev gcc \
    # && apk add zip libxml2 libxslt libxslt-dev libxml2-dev musl-dev
WORKDIR /tmp
COPY install.sh /usr/bin/install.sh
RUN chmod 755 /usr/bin/install.sh
ENTRYPOINT ["/usr/bin/install.sh"]
