# 基于官方 slim 镜像
FROM openjdk:11.0.11-jre-slim

# 换国内源（可选，GitHub Actions 国外机器可删掉）
RUN sed -i 's@deb.debian.org@mirrors.aliyun.com@g' /etc/apt/sources.list && \
    apt-get clean

# 更新并安装 bash（ slim 默认没有 bash ）
RUN apt-get update && \
    apt-get install -y --no-install-recommends bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 验证
RUN ["/bin/bash", "--version"]

# 默认 entrypoint 保持 java 镜像风格，可按需改
ENTRYPOINT ["/bin/bash"]
