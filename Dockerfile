FROM openjdk:11.0.11-jre-slim
RUN apt-get update && \
    apt-get install -y --no-install-recommends bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
CMD ["bash"]
