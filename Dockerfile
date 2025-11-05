FROM openjdk:11.0.11-jre-slim

# 1. 默认源即可，只加 DNS 防止 CI 解析失败
RUN echo 'nameserver 8.8.8.8' > /etc/resolv.conf && \
    apt-get update && \
    apt-get install -y --no-install-recommends bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["bash"]
