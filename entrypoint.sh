#!/bin/bash

echo "\nWaiting for building and setting up the Tinode server...\nIt may take a few minutes.\n"

# ls /go/src/github.com/herosony/chat/tinode-db

# Install tinode server from mounted directory
go install -tags mysql github.com/herosony/chat/server@develop

# # Install tinode-db from mounted direcrory
go install -tags mysql github.com/herosony/chat/tinode-db@develop

ls $GOPATH/bin

# Initiate database
# $GOPATH/bin/tinode-db -config=/go/src/github.com/herosony/chat/tinode-db/tinode.conf -data=/go/src/github.com/herosony/chat/tinode-db/data.json

# echo "\nThe Tinode server is starting...\n"

# # # Run the server
# $GOPATH/bin/server -config=/go/src/github.com/herosony/chat/server/tinode.conf -static_data=/web/example-react-js/