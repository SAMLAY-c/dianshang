#!/bin/bash

echo "📸 噗噗咩咩图片管理工具"
echo "========================"

# 创建示例图片目录结构
echo "🗂️  创建图片目录结构..."
mkdir -p public/images/products

# 显示当前图片状态
echo "📋 当前图片状态："
ls -la public/images/ 2>/dev/null || echo "  暂无图片文件"

echo ""
echo "📝 使用说明："
echo "1. 将产品主图命名为: product-01-main.jpg, product-02-main.jpg, etc."
echo "2. 将多角度图命名为: product-01-1.jpg, product-01-2.jpg, etc."
echo "3. 所有图片放在 public/images/ 目录下"
echo "4. 在 src/data/products.js 中更新图片路径"

echo ""
echo "📐 推荐图片规格："
echo "- 主图尺寸: 800x800px (正方形)"
echo "- 格式: JPG/PNG"
echo "- 文件大小: <500KB"

echo ""
echo "🔧 当前产品配置："
grep -n "mainImage" src/data/products.js | head -5

echo ""
echo "✨ 图片添加完成后，运行以下命令查看效果："
echo "npm run dev"