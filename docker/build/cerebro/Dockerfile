FROM openjdk:8-jre

# grab gosu for easy step-down from root
ENV GOSU_VERSION 1.7
RUN set -x \
	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" \
	&& export GNUPGHOME="$(mktemp -d)" \
	&& chmod +x /usr/local/bin/gosu \
	&& gosu nobody true

ENV CEREBRO_VERSION 0.7.1
RUN cd /opt/ \
    && wget -O cerebro-${CEREBRO_VERSION}.tgz https://github.com/lmenezes/cerebro/releases/download/v${CEREBRO_VERSION}/cerebro-${CEREBRO_VERSION}.tgz \
    && tar zxvf cerebro-${CEREBRO_VERSION}.tgz \
    && rm cerebro-${CEREBRO_VERSION}.tgz \
    && mkdir cerebro-${CEREBRO_VERSION}/logs \
    && mv cerebro-${CEREBRO_VERSION} cerebro

WORKDIR /opt/cerebro
EXPOSE 9201
CMD ["./bin/cerebro", "-Dhttp.port=9201", "-Dhttp.address=0.0.0.0"]