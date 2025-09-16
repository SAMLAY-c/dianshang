#!/bin/bash

# 图片复制脚本
# 将桌面excel文件夹中的图片复制到项目images目录

echo "📸 开始复制产品图片..."

# 源目录和目标目录
SOURCE_DIR="/Users/linchenglie/Desktop/excel"
TARGET_DIR="/Users/linchenglie/电商比赛/public/images"

# 确保目标目录存在
mkdir -p "$TARGET_DIR"

# 复制图片文件并重命名
echo "🔄 正在复制图片文件..."

# 复制并重命名图片文件
cp "$SOURCE_DIR/图片1.png" "$TARGET_DIR/product-01-main.jpg"
cp "$SOURCE_DIR/图片2.png" "$TARGET_DIR/product-02-main.jpg"
cp "$SOURCE_DIR/图片3.png" "$TARGET_DIR/product-03-main.jpg"
cp "$SOURCE_DIR/图片4.png" "$TARGET_DIR/product-04-main.jpg"
cp "$SOURCE_DIR/图片5.png" "$TARGET_DIR/product-05-main.jpg"
cp "$SOURCE_DIR/图片6.png" "$TARGET_DIR/product-06-main.jpg"
cp "$SOURCE_DIR/图片7.png" "$TARGET_DIR/product-07-main.jpg"
cp "$SOURCE_DIR/图片8.png" "$TARGET_DIR/product-08-main.jpg"

echo "✅ 图片复制完成！"

# 显示复制结果
echo ""
echo "📋 复制结果："
ls -la "$TARGET_DIR/product-*.jpg"

echo ""
echo "🎯 图片映射关系："
echo "图片1.png -> product-01-main.jpg (甜心蜜语)"
echo "图片2.png -> product-02-main.jpg (暗夜蔷薇)"
echo "图片3.png -> product-03-main.jpg (斑马甜酷)"
echo "图片4.png -> product-04-main.jpg (焦糖甜心)"
echo "图片5.png -> product-05-main.jpg (法式优雅)"
echo "图片6.png -> product-06-main.jpg (彩虹渐变)"
echo "图片7.png -> product-07-main.jpg (银河星辰)"
echo "图片8.png -> product-08-main.jpg (简约透明)"

echo ""
echo "🌐 现在可以访问 http://localhost:7520 查看效果"