# 基于官方的 Tomcat 8 镜像
FROM tomcat:8.5

# 删除 Tomcat 自带的默认 webapps 文件夹下的内容
RUN rm -rf /usr/local/tomcat/webapps/*

# 将本地的 server.xml 复制到 Tomcat 的配置目录
COPY ./server.xml /usr/local/tomcat/conf/server.xml

# 将本地生成的 WAR 文件复制到 Tomcat 容器的 webapps 目录中，并命名为 ROOT.war
# 这样 WAR 文件将作为默认应用运行
COPY target/FeS-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# 暴露容器的 8080 端口，以便外部访问
EXPOSE 8080

# 启动 Tomcat 服务
CMD ["catalina.sh", "run"]
