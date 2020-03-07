#!/bin/sh
pandoc /go/src/markdownHtml/web/data/index.md \
      --output=/go/src/markdownHtml/web/data/index.html \
      --to=html5 \
      --css=css/tufte.css \
      --metadata pagetitle="自定义标题" \
      --highlight-style=haddock \
      --self-contained
cd ./web/
nohup /go/src/markdownHtml/web/server &
cd ../
"/go/src/markdownHtml/watchFile"