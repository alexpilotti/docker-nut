FROM ubuntu:latest

RUN apt-get update && apt-get -y install nut

EXPOSE 3493

ADD entrypoint.sh /usr/local/bin/

HEALTHCHECK --interval=30s --timeout=5s --retries=3 CMD upsc eaton1@localhost || exit 1
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
