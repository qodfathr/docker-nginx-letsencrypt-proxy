FROM annixa/docker-nginx-letsencrypt-proxy
MAINTAINER "Todd Mancini" <todd.mancini@daxat.com>
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
COPY letsencrypt-run.sh /opt
RUN chmod +x /opt/letsencrypt-run.sh
COPY wellknown.conf /etc/nginx/sites-available

WORKDIR /opt
CMD ["/docker-entrypoint.sh"]
