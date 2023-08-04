
# 使用一个基础的Ubuntu镜像
FROM ubuntu:20.04

# 安装curl
RUN apt-get update && apt-get install -y curl && apt-get clean

# 安装Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs

# 安装OpenJDK
RUN apt-get install -y openjdk-17-jdk && apt-get clean

# 设置Java环境变量
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV PATH=$PATH:$JAVA_HOME/bin

# 设置工作目录
WORKDIR /app

# 设置镜像启动时的默认命令
CMD ["bash"]