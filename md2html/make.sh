#!/usr/bin/bash

pandoc ./web/data/index.md \
--output=./web/data/index.html \
--to=html5 \
--css=css/tufte.css \
--metadata pagetitle="自定义标题" \
--highlight-style=haddock \
--self-contained