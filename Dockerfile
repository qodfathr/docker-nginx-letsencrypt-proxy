FROM annixa/docker-nginx-letsencrypt-proxy
MAINTAINER "Todd Mancini" <todd.mancini@daxat.com>
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
COPY letsencrypt-run.sh /opt
COPY wellknown.conf /etc/nginx/sites-available
RUN chmod +x /opt/letsencrypt-run.sh

WORKDIR /opt
CMD ["/docker-entrypoint.sh"]
