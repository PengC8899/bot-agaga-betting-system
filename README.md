# 🎯 Bot Agaga - 专业Telegram投注管理系统

[![Docker](https://img.shields.io/badge/Docker-Ready-blue.svg)](https://docker.com)
[![FastAPI](https://img.shields.io/badge/FastAPI-0.104.1-green.svg)](https://fastapi.tiangolo.com)
[![Python](https://img.shields.io/badge/Python-3.11+-blue.svg)](https://python.org)
[![Telegram](https://img.shields.io/badge/Telegram-Bot-blue.svg)](https://telegram.org)

## 🌟 项目概述

Bot Agaga 是一个专业的Telegram投注管理系统，支持多域名部署，具备完整的Docker容器化解决方案。系统采用FastAPI + Telegram Bot的统一架构，提供高性能的投注管理和数据同步功能。

### 🎯 主要特性

- 🤖 **Telegram Bot集成** - 完整的投注管理功能
- 🌐 **FastAPI Web服务** - RESTful API和Web界面
- 🐳 **Docker容器化** - 一键部署，环境隔离
- 🔄 **数据同步** - 实时数据同步和备份
- 🔒 **SSL支持** - 自动HTTPS证书管理
- 📊 **监控面板** - 实时系统状态监控
- 🚀 **高性能** - Redis缓存和异步处理

## 🚀 快速开始

### 📋 环境要求

- Python 3.11+
- Docker & Docker Compose
- Redis (可选，用于缓存)
- Nginx (生产环境)

### 🔧 本地开发

1. **克隆项目**
   ```bash
   git clone https://github.com/PengC8899/bot-agaga-betting-system.git
   cd bot-agaga-betting-system
   ```

2. **配置环境变量**
   ```bash
   cp .env.example .env
   # 编辑 .env 文件，填入你的配置
   ```

3. **安装依赖**
   ```bash
   pip install -r requirements.txt
   ```

4. **启动应用**
   ```bash
   python main.py
   ```

### 🐳 Docker部署

1. **构建并启动服务**
   ```bash
   docker-compose up -d
   ```

2. **查看服务状态**
   ```bash
   docker-compose ps
   ```

3. **查看日志**
   ```bash
   docker-compose logs -f bot-agaga
   ```

## 📁 项目结构

```
bot-agaga-betting-system/
├── app/                          # 应用核心代码
│   ├── api/                     # API路由
│   ├── models/                  # 数据模型
│   ├── services/                # 业务服务
│   ├── telegram_listener/       # Telegram Bot
│   └── utils/                   # 工具函数
├── config/                      # 配置文件
├── nginx/                       # Nginx配置
├── static/                      # 静态文件
├── templates/                   # HTML模板
├── docker-compose.yml           # Docker配置
├── Dockerfile                   # Docker镜像
├── requirements.txt             # Python依赖
└── .env.example                 # 环境变量模板
```

## 🔧 配置说明

### 环境变量

| 变量名 | 说明 | 默认值 |
|--------|------|--------|
| `BOT_TOKEN` | Telegram Bot Token | 必填 |
| `OWNER_ID` | 管理员Telegram ID | 必填 |
| `DOMAIN` | 部署域名 | localhost |
| `PORT` | 服务端口 | 8000 |
| `REDIS_URL` | Redis连接地址 | redis://localhost:6379/0 |
| `DATABASE_URL` | 数据库连接地址 | sqlite:///./data/bets.db |

## 🌐 访问地址

部署完成后可通过以下地址访问：

- **主站**: https://your-domain.com
- **API文档**: https://your-domain.com/docs
- **管理面板**: https://your-domain.com/dashboard
- **健康检查**: https://your-domain.com/health
- **系统监控**: https://your-domain.com/metrics

## 🤖 Bot功能

### 基础命令

- `/start` - 启动Bot，显示主菜单
- `/menu` - 显示功能菜单
- `/help` - 显示帮助信息
- `/status` - 查看系统状态（管理员）
- `/chatid` - 获取当前聊天ID

### 投注管理

- 📊 投注记录管理
- 💰 余额同步
- 📈 数据统计
- 🔄 自动备份

### 图片转发

- 🖼️ 自动图片转发到指定群组
- 📱 支持多群组管理
- ✅ 转发状态反馈

## 📊 监控和维护

### 健康检查

系统提供多层健康检查：

```bash
# 检查应用状态
curl https://your-domain.com/health

# 检查Docker服务
docker-compose ps

# 查看系统资源
docker stats
```

### 日志管理

```bash
# 查看应用日志
docker-compose logs -f bot-agaga

# 查看Nginx日志
docker-compose logs -f nginx

# 查看Redis日志
docker-compose logs -f redis
```

### 备份策略

- **自动备份**: 每日凌晨2点自动备份数据库
- **手动备份**: 支持手动触发备份
- **备份存储**: 本地存储，支持云存储扩展

## 🔒 安全特性

- ✅ SSL/TLS加密传输
- ✅ CORS跨域保护
- ✅ 请求大小限制
- ✅ 超时保护
- ✅ 防火墙配置
- ✅ 安全头设置

## 🚨 故障排除

### 常见问题

1. **Bot无法启动**
   ```bash
   # 检查Token是否正确
   echo $BOT_TOKEN
   
   # 检查网络连接
   curl -I https://api.telegram.org
   ```

2. **SSL证书问题**
   ```bash
   # 手动获取证书
   certbot --nginx -d your-domain.com
   ```

3. **数据库连接失败**
   ```bash
   # 检查数据库文件权限
   ls -la data/
   ```

## 🤝 贡献指南

1. Fork 项目
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 打开 Pull Request

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 📞 支持

如果您遇到问题或需要帮助：

- 📧 邮箱: support@example.com
- 💬 Telegram: @YourSupportBot
- 🐛 问题反馈: [GitHub Issues](https://github.com/PengC8899/bot-agaga-betting-system/issues)

## 🎉 致谢

感谢所有为这个项目做出贡献的开发者！

---

**⭐ 如果这个项目对您有帮助，请给我们一个星标！**