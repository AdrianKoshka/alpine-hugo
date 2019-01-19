FROM alpine:3.8

LABEL Author="Adrian Lucrèce Céleste adrianlucrececeleste@airmail.cc"

RUN apk update --no-cache \
    && apk upgrade --no-cache \
    && cd /tmp \
    && wget https://github.com/gohugoio/hugo/releases/download/v0.53/hugo_0.53_Linux-64bit.tar.gz \
    && tar xvf hugo_0.53_Linux-64bit.tar.gz \
    && rm LICENSE README.md hugo_0.53_Linux-64bit.tar.gz \
    && mv hugo /usr/local/bin/

ENTRYPOINT [ "hugo" ]