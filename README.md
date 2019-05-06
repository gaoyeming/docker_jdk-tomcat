# docker_jdk-tomcat
jdk+tomcat镜像在centos上的Dockerfile实现

# 构建镜像
docker build -t gaoyeming/jdk_tomcat:latest .

# 运行容器
docker run -d -p 8088:8080 --name jdk_tomcat -v /docker/本地项目:/docker/java/apache-tomcat-8.5/webapps/项目 gaoyeming/jdk_tomcat:latest

# 进入容器
docker exec -it 容器ID /bin/bash

# 退出容器
exit

# 停止容器
docker stop 容器ID
docker rm 容器ID

# 删除镜像
docker rmi 镜像ID
