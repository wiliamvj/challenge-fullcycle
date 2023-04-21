FROM golang:1.20.3

WORKDIR /app

COPY . .

RUN go build -o app

FROM scratch

COPY --from=0 /app/app /app

CMD ["/app"]
