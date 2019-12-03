#!/bin/sh

echo "Download golang wirter to path?"



export GOROOT=/Users/$USER/DevEnv/go
export GOARCH=amd64
export GOOS=darwin
export GOBIN=$GOROOT/bin
export GOTOOLS=$GOROOT/pkg/tool/$GOOS\_$GOARCH/
export GOPATH=/Users/$USER/DevEnv/gocode

export PATH=$PATH:$GOBIN:$GOTOOLS

