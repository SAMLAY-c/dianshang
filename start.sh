#!/bin/bash

echo "🚀 启动噗噗咩咩项目..."

# 检查是否安装了依赖
if [ ! -d "node_modules" ]; then
    echo "📦 安装依赖..."
    npm install
fi

# 启动开发服务器
echo "🎯 启动开发服务器..."
echo "项目将在 http://localhost:7520 启动"
echo "按 Ctrl+C 停止服务器"
echo ""

npm run dev