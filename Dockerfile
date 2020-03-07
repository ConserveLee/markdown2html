FROM quanzhilong/md2html:basic
MAINTAINER Lee "admin@lees.work"
WORKDIR /go/src/markdownHtml
ADD ./md2html .
RUN chmod 755 -R .
RUN go get "github.com/valyala/fasthttp" && \
 go build -o server ./web/main.go
EXPOSE 8080
ENTRYPOINT ["./entrypoint.sh"]