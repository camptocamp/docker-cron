FROM debian:jessie

RUN apt-get update \
  && apt-get install -y cron \
  && rm -rf /var/apt/lists/*

COPY docker-entrypoint.sh /
COPY docker-entrypoint.d /docker-entrypoint.d
ENTRYPOINT [ "/docker-entrypoint.sh", "cron" ]
CMD [ "-f" ]
