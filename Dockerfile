FROM golang:1.16
WORKDIR /go/src

# RUN go get gopkg.in/gorethink/gorethink.v4 && go install gopkg.in/gorethink/gorethink.v4

# RUN go install -tags mysql github.com/herosony/chat/server@latest
# RUN go install -tags mysql github.com/herosony/chat/tinode-db@latest

ADD ./entrypoint.sh .

RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["sh", "./entrypoint.sh"]