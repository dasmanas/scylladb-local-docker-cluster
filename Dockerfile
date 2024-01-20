FROM --platform=linux/arm64/v8 scylladb/scylla:latest

COPY custom-docker-entrypoint.sh /custom-docker-entrypoint.sh
RUN chmod +x /custom-docker-entrypoint.sh