#!/usr/bin/env bash

echo "broker id: ${BROKER_ID}"
#sed -r -i "s/<<<BROKER_ID>>>/${BROKER_ID}/" ${KAFKA_HOME}/config/server.properties
echo "zk hosts: ${ZK_HOSTS}"
#sed -r -i "s/<<<ZK_HOSTS>>>/${ZK_HOSTS}/" ${KAFKA_HOME}/config/server.properties
echo "advertised hosts: ${ADVERTISED_HOST}"
#sed -r -i "s/<<<ADVERTISED_HOST>>>/${ADVERTISED_HOST}/g" ${KAFKA_HOME}/config/server.properties

# Run Kafka
${KAFKA_HOME}/bin/kafka-server-start.sh ${KAFKA_HOME}/config/server.properties
