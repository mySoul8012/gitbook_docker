# 构建阶段
FROM node
# 指定工作目录
WORKDIR /build
# 指定工作端口
EXPOSE 4000
# 安装gitbook
RUN npm install gitbook -g;
RUN npm install gitbook-cli -g;
# 拷贝文件进入构建目录
COPY ./* ./
COPY ./work/* ./work
# 初始化镜像
WORKDIR /build/work
RUN gitbook init
CMD ["gitbook", "serve"]