FROM loicbtd/baseimage:latest

RUN \
    echo "**** install packages ****" && \
        apk add --update --no-cache \
            openssl && \
        pip3 install \
            certbot \
            certbot-dns-ovh
        

COPY root/ /

EXPOSE 80 443