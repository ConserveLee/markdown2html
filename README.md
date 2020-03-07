markdown2html 是一个将 markdown 自动转换并渲染为 html 的工具

🚀 安装方式

依赖 docker 环境

1. clone本项目
2. (可选)编译基础镜像

```shell
$ docker build -t {自定义镜像名} dockerfile/basic/
```

3. (可选)修改 dockerfile/md2html/Dockerfile 'FROM quanzhilong/md2html:basic' 为你的自定义镜像名

```
$ docker build -t md2html .
```

4. (可选)运行镜像

```
$ docker run -p 8080:8080 -v /data/:/go/src/markdownHtml/web/data/ -d md2html
```

5. 嫌麻烦可以直接用现有的镜像

```
docker run -p 8080:8080 -v /data/:/go/src/markdownHtml/web/data/ -d quanzhilong/md2html
```

6. 测试运行

```
$ echo "hello world" > /data/index.md
# 稍后访问 localhost:8080 ，即可访问编译后的html
```