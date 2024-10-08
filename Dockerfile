FROM golang:1.23.2

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY *.go ./

RUN docker compose up 

EXPOSE 8080

CMD ["/docker-gs-ping"]
