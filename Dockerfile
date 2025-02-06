FROM alpine:latest

WORKDIR /app
RUN wget https://github.com/decke/smtprelay/releases/download/v1.11.2/smtprelay-v1.11.2-linux-amd64.tar.gz -O /app/smtprelay.tar.gz; \
    tar zxvf smtprelay.tar.gz; \
    rm smtprelay.tar.gz; rm smtprelay.ini; \
    chmod +x smtprelay
ENTRYPOINT smtprelay
CMD [ "--help"]
