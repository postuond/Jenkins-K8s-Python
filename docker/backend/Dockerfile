# TASK:
# Treba implementovat vraci zadania
#
# Aplikacia je by default dostupna na porte 8080
FROM golang:1.15.8-alpine3.12
WORKDIR /go/src/backend/
COPY gofiles/* ./
#RUN go get -d -v
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o backend .
FROM scratch
EXPOSE 8080
COPY --from=0 /go/src/backend/backend .
CMD [ "./backend" ]
