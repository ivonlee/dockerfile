# install beego
# version 1.0  
  
FROM 127.0.0.1:5000/centos:latest  
MAINTAINER ivonlee "ldtrain@gmail.com"  

ENV GOPATH /data/golang
ENV PATH $GOPATH/bin:$PATH
  
RUN \
 mkdir -p /data/golang && \
 yum install golang vim golang-vim git supervisor -y && \
 go get github.com/astaxie/beego && \
 go get github.com/beego/bee

ADD ./hello.go /data/golang/hello.go

RUN go build -o /data/golang/hello /data/golang/hello.go
RUN chmod 755 /data/golang/hello

WORKDIR /data/golang 
EXPOSE 22 8080  

CMD ["/data/golang/hello"]
