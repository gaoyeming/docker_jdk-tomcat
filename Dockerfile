#使用的基础镜像
FROM docker.io/centos:latest
#作者信息
MAINTAINER gaoyeming "gaoyeming520@foxmail.com"
#创建目录
RUN mkdir -p /docker/java/jdk8
#把当前目录下的jdk文件夹添加到镜像
ADD jdk1.8.0_102 /docker/java/jdk8
#创建tomcat目录
RUN mkdir -p /docker/java/apache-tomcat-8.5
#把当前目录下的tomcat文件夹添加到镜像
ADD apache-tomcat-8.5.37 /docker/java/apache-tomcat-8.5
#添加环境变量
ENV JAVA_HOME /docker/java/jdk8
ENV CATALINA_HOME /docker/java/apache-tomcat-8.5
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin
#暴露8080端口
EXPOSE 8080
#启动时运行tomcat
CMD ["/docker/java/apache-tomcat-8.5/bin/catalina.sh","run"]

