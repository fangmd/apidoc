
redoc


# install redoc docker

```
docker pull redocly/redoc
```

```
docker run -p 8080:80 redocly/redoc

docker run -p 8080:80 -d redocly/redoc // 运行 redoc 后台模式
```

访问: `http://localhost:8080/` 看到接口文档表示安装成功

>基于 ngxin ，运行后也会自动运行 nginx 镜像

# 创建 API 文档

`swagger.json`

# 创建 Dockerfile

```
FROM redocly/redoc

COPY ./index.html /usr/share/nginx/html

COPY ./swagger.json /usr/share/nginx/swagger.json
```

build image:

```
docker build -t api-redoc .
```

run image:

```
docker run --name api-redoc-container -d -p 8080:80 api-redoc
```

check result:

访问: `http://localhost:8080/` 就能看到 `swagger.json` 生成的 api 文档

