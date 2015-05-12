FROM iojs:2.0
MAINTAINER Ross Kukulinski "ross@getyodlr.com"

ENV LAST_UPDATED 5_12_2015

RUN npm -g install npm && \
    npm -g install \
        bower \
        gulp \
        grunt-cli \
        bunyan \
        && \
    mkdir -p /var/log/supervisor
RUN ln -s /usr/local/bin/iojs /usr/bin/node
CMD ["/usr/bin/node", "--version"]
