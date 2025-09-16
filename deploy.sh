#!/bin/bash

echo "🚀 部署噗噗咩咩项目..."

# 检查是否安装了依赖
if [ ! -d "node_modules" ]; then
    echo "📦 安装依赖..."
    npm install
fi

# 构建生产版本
echo "🔨 构建生产版本..."
npm run build

echo "✅ 构建完成！"
echo "📁 构建文件位于 dist/ 目录"
echo ""
echo "🚀 部署选项："
echo "1. Vercel: vercel --prod"
echo "2. Netlify: netlify deploy --prod"
echo "3. 其他静态托管平台：上传 dist/ 目录内容"