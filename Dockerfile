# Use an official Kafka image
FROM bitnami/kafka:latest

# Set environment variables for Kafka
ENV KAFKA_CFG_ZOOKEEPER_CONNECT=zookeeper:2181 \
    KAFKA_CFG_LISTENERS=PLAINTEXT://:9092 \
    KAFKA_CFG_ADVERTISED_LISTENERS=PLAINTEXT://kafka-service:9092

EXPOSE 9092

ENTRYPOINT [ "/opt/bitnami/scripts/kafka/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/kafka/run.sh" ]
