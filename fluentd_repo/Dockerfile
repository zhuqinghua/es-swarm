# AUTOMATICALLY GENERATED
# DO NOT EDIT THIS FILE DIRECTLY, USE /Dockerfile.template.erb

FROM alpine:3.9
LABEL maintainer "zhuqinghua<zhuqinghua@inspur.com>"
LABEL Description="Bmctrap docker image" Vendor="inspur" Version="1.0"

RUN apk update \
 && apk add --no-cache \
        ca-certificates linux-headers \
        ruby ruby-irb ruby-etc ruby-webrick \
        tini \
 && apk add --no-cache --virtual .build-deps \
        build-base \
        ruby-dev gnupg \
 && echo 'gem: --no-document' >> /etc/gemrc \
 && gem install oj -v 3.8.1 \
 && gem install json -v 2.2.0 \
 && gem install async-http -v 0.49.1 \
 && gem install fluentd -v 1.8.1 \
 && gem install fluent-plugin-elasticsearch \
 && gem install bigdecimal -v 1.4.4 \
 && apk del .build-deps \
 && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /var/cache/apk/* \
 && mkdir -p /fluentd/etc


COPY fluent.conf /fluentd/etc/
COPY entrypoint.sh /bin/


ENV FLUENTD_CONF="fluent.conf"

ENV LD_PRELOAD=""
EXPOSE 514/udp/tcp

ENTRYPOINT ["tini", "--", "/bin/entrypoint.sh"]
CMD ["fluentd"]
