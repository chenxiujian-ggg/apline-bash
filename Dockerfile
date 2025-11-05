FROM openjdk:11.0.11-jre-slim

# 1. 换国内源（阿里云）+ 2. 指定 DNS 防止解析失败
RUN echo 'nameserver 8.8.8.8' > /etc/resolv.conf && \
    sed -i 's|http://deb.debian.org|http://mirrors.aliyun.com|g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["bash"]
