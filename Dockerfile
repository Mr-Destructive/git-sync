FROM alpine

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

RUN chmod +x /entrypoint.sh && \
    chmod +x /git-sync.sh

ENTRYPOINT ["/entrypoint.sh"]
