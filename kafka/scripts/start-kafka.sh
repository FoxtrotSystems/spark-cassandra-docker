#!/usr/bin/env bash

while true; do
  echo "broker id: ${BROKER_ID}"
  echo "zk hosts: ${ZK_HOSTS}"
  echo "advertised hosts: ${ADVERTISED_HOST}"

  # Run Kafka
  ${KAFKA_HOME}/bin/kafka-server-start.sh ${KAFKA_HOME}/config/server.properties

  # Sleep 2 seconds then loop to restart kafka if it dies
  sleep 2
done

