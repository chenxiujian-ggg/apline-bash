FROM openjdk:11.0.11-jre-slim

# 安装 bash 并清理缓存
RUN apt-get update && \
    apt-get install -y --no-install-recommends bash && \
    rm -rf /var/lib/apt/lists/*

# 默认启动 bash（可按需覆盖）
CMD ["bash"]
