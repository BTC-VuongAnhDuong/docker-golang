FROM golang:alpine
RUN apk add git 
RUN export GOPATH=/go/bin
RUN export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
RUN go get github.com/gorilla/mux
ADD ./src/ /go/src/
WORKDIR /go/src/
CMD ["go","run","main.go"]