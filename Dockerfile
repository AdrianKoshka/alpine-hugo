FROM alpine:3.10

LABEL maintainer="Adrian Lucrèce Céleste adrianlucrececeleste@airmail.cc"

RUN apk update --no-cache \
    && apk upgrade --no-cache \
    && cd /tmp \
    && wget https://github.com/gohugoio/hugo/releases/download/v0.58.1/hugo_0.58.1_Linux-64bit.tar.gz \
    && tar xvf hugo_0.58.1_Linux-64bit.tar.gz \
    && rm LICENSE README.md hugo_0.58.1_Linux-64bit.tar.gz \
    && mv hugo /usr/local/bin/

WORKDIR /workspace
CMD ["--help"]
ENTRYPOINT [ "hugo" ]
