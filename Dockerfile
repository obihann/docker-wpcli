FROM alpine:3.5

LABEL description="WP-CLI built on top of Alpine Linux 3.5." \
    name="wpcli" \
    version="1.0.0"

RUN apk add --no-cache \
    curl \
    php5-mysql \
    php5-phar \
    php5-curl \
    php5-zip \
    php5-bz2 \
    php5-zlib \
    php5-openssl \
    php5-json \
    php5-pdo \
    php5-pdo_mysql \
    php5-cli && \

    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x ./wp-cli.phar && \
    mv ./wp-cli.phar /usr/bin/wp && \

    rm -rf /tmp/src && \
    rm -rf /var/cache/apk/*

VOLUME ["/mnt"]
WORKDIR "/mnt/"
ENTRYPOINT ["/usr/bin/wp", "--path=/mnt"]
CMD ["--info"]
