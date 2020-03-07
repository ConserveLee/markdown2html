package main

import (
	"fmt"
	"github.com/valyala/fasthttp"
	"io/ioutil"
)

func main() {
	fasthttp.ListenAndServe(":8080", func(ctx *fasthttp.RequestCtx) {
		ctx.SetContentType("text/html")
		b, _ := ioutil.ReadFile("./data/index.html")
		fmt.Fprintf(ctx, string(b))
	})
}