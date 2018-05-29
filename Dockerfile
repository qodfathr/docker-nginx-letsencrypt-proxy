FROM annixa/docker-nginx-letsencrypt-proxy
MAINTAINER "Todd Mancini" <todd.mancini@daxat.com>
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

WORKDIR /opt
CMD ["/docker-entrypoint.sh"]
