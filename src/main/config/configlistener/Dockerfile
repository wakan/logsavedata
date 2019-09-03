FROM alpine:3.10
RUN apk add --no-cache mosquitto-clients \
  && mkdir -p /etc/logsavedata/
VOLUME /etc/logsavedata/
COPY run.sh /usr/bin/
RUN chmod a+x /usr/bin/run.sh
CMD /usr/bin/run.sh
