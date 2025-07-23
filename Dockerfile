FROM python:3.11-slim

WORKDIR /app

# 安装系统依赖
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# 复制依赖文件
COPY requirements.txt .

# 安装Python依赖
RUN pip install --no-cache-dir -r requirements.txt

# 复制应用代码
COPY . .

# 创建必要的目录
RUN mkdir -p data logs

# 复制并设置启动脚本权限
COPY docker-start.sh /app/docker-start.sh
RUN chmod +x /app/docker-start.sh

# 暴露端口 (支持8002端口)
EXPOSE 8000 8002

# 健康检查 (动态端口检测)
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
    CMD curl -f http://localhost:${PORT:-8000}/health || curl -f http://localhost:8002/health || exit 1

# 启动命令
CMD ["/app/docker-start.sh"]