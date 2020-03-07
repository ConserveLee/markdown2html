FROM quanzhilong/md2html:basic
MAINTAINER Lee "admin@lees.work"
WORKDIR /go/src/markdownHtml
ADD ./md2html .
RUN chmod 755 -R .
WORKDIR /go/src/markdownHtml/web
RUN export GOPROXY=https://goproxy.io && \
 go mod init md2html && \
 go build -o server
# 这个太慢了，改掉
#RUN go get "github.com/valyala/fasthttp" && \
# go build -o server .
EXPOSE 8080
WORKDIR /go/src/markdownHtml
ENTRYPOINT ["./entrypoint.sh"]