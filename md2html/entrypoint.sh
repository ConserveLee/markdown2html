#!/bin/sh
/go/src/markdownHtml/make.sh
cd ./web/
nohup /go/src/markdownHtml/web/server &
cd ../
"/go/src/markdownHtml/watchFile"