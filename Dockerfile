FROM openjdk:11.0.11-jre-slim

# 1. 手动换源（不用 sed）
RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak && \
    echo 'deb http://mirrors.aliyun.com/debian buster main' > /etc/apt/sources.list && \
    echo 'deb http://mirrors.aliyun.com/debian-security buster/updates main' >> /etc/apt/sources.list

# 2. 安装 bash
RUN apt-get update && \
    apt-get install -y --no-install-recommends bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["bash"]
