
# sandbox-api
接口服务 `API` 测试沙箱

## 用法
在服务器侧进入部署目录, 获取部署编排仓库
```
git clone https://github.com/smallsaas/sandbox-api
```

#### 构建前准备
替换`api`目录下的源代码,包括如下：
```
src/
pom.xml
```

#### 构建并执行
```
COMPOSE_DOCKER_CLI_BUILD=1 docker-compose up --build --detach
# or 
# sh startup.sh
```


