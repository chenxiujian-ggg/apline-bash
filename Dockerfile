FROM python:3.13-slim
RUN apt-get update \
 && apt-get install -y --no-install-recommends bash \
 && rm -rf /var/lib/apt/lists/*
CMD ["bash"]
