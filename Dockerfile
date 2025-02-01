FROM bitnami/kafka:latest

# Set environment variables for KRaft mode
ENV KAFKA_CFG_PROCESS_ROLES=broker \
    KAFKA_CFG_NODE_ID=1 \
    KAFKA_CFG_CONTROLLER_QUORUM_VOTERS=1@localhost:9093 \
    KAFKA_CFG_LISTENERS=PLAINTEXT://0.0.0.0:9092 \
    KAFKA_CFG_ADVERTISED_LISTENERS=PLAINTEXT://0.0.0.0:9092 \
    KAFKA_CFG_LOG_DIRS=/bitnami/kafka/data

EXPOSE 9092

# Command to run Kafka in KRaft mode
ENTRYPOINT [ "/opt/bitnami/scripts/kafka/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/kafka/run.sh" ]
