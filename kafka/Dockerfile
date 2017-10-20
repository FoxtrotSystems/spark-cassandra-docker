FROM quay.io/foxtrot/javabase

ENV SCALA_VERSION="2.11" \
KAFKA_VERSION="0.11.0.0" \
KAFKA_HOME="/opt/kafka_2.11-0.11.0.0"

RUN wget -q http://apache.mirrors.tds.net/kafka/"${KAFKA_VERSION}"/kafka_"${SCALA_VERSION}"-"${KAFKA_VERSION}".tgz -O /tmp/kafka_"${SCALA_VERSION}"-"${KAFKA_VERSION}".tgz
RUN tar -xzf /tmp/kafka_"${SCALA_VERSION}"-"${KAFKA_VERSION}".tgz -C /opt && rm /tmp/kafka_"${SCALA_VERSION}"-"${KAFKA_VERSION}".tgz
RUN rm -f /opt/kafka_2.11-0.11.0.0/config/server.properties

VOLUME ["/var/lib/kafka", "/opt/kafka_2.11-0.11.0.0/config/server.properties"]

ADD scripts/start-kafka.sh scripts/create-topic.sh /usr/local/bin/

EXPOSE 9092

