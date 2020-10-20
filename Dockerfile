FROM alpine:latest

ENV DEPLOY_DIR=/appdir

RUN mkdir -p ${DEPLOY_DIR}
COPY app ${DEPLOY_DIR}

WORKDIR ${DEPLOY_DIR}
RUN chmod +x app

ENTRYPOINT ["sh", "-c", "$DEPLOY_DIR/app"]

