// 图片更新示例
// 运行这个脚本来测试图片路径

const products = [
  {
    id: 1,
    name: "甜心蜜语",
    mainImage: "/images/product-01-main.jpg",
    gallery: ["/images/product-01-1.jpg", "/images/product-01-2.jpg"],
    price: 39.9,
    category: "引流款",
    styleTags: ["甜美风", "约会必备", "优雅"],
    description: "走的是甜美优雅风，以温柔的淡粉色为底色，搭配渐变效果和细闪元素。部分甲片边缘有精致的链条或珠子装饰，还有可爱的粉色蝴蝶结，俏皮又减龄，能轻松适配约会、派对等多种场合。",
    advantages: [
      { icon: "🎨", text: "高颜值适配性，衬托肤色显白，百搭各种造型。" },
      { icon: "☁️", text: "优质轻薄甲片，贴合指甲弧度，佩戴无异物感。" },
      { icon: "💰", text: "超高性价比，可重复使用，在家快速搞定精致美甲。" }
    ],
    douyinUrl: "https://v.douyin.com/你的抖店链接"
  }
];

console.log("📸 图片路径示例：");
console.log("================");

products.forEach(product => {
  console.log(`\n🎯 产品: ${product.name}`);
  console.log(`📷 主图: ${product.mainImage}`);
  console.log(`🖼️  多角度图: ${product.gallery.join(', ')}`);
  console.log("💡 将这些图片文件放在 public/images/ 目录下");
});

console.log("\n✅ 图片添加完成后，网站会自动显示真实图片");