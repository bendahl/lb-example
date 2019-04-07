FROM scratch
LABEL maintainer="Benjamin Dahlmanns"

COPY lb-example /
EXPOSE 8080

ENTRYPOINT ["/lb-example"]