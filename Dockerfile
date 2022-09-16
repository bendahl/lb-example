FROM golang:1.19.1-alpine3.16 as builder
WORKDIR /lb-example
COPY main.go /lb-example
COPY go.mod /lb-example
COPY go.sum /lb-example
RUN go build -tags netgo -a -v


FROM scratch
LABEL maintainer="Benjamin Dahlmanns"

COPY --from=builder /lb-example/lb-example /
ENV LISTEN_PORT=8080
EXPOSE 8080

ENTRYPOINT ["/lb-example"]