FROM scratch
LABEL maintainer="Benjamin Dahlmanns"

COPY lb-example /
ENV LISTEN_PORT=8080
EXPOSE 8080

ENTRYPOINT ["/lb-example"]