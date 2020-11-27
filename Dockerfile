FROM alpine:3.5

#RUN apk add --no-cache --virtual .build-deps ca-certificates curl unzip
#RUN rm -rf /tmp/v2ray
#COPY /usr/local/bin/v2ray
#/usr/local/bin/v2ctl
#/usr/local/etc/v2ray/config.json
ADD v2ray /tmp/v2ray
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
CMD /configure.sh
#RUN apk del .build-deps
