# 噗噗咩咩 - 穿戴甲品牌网站

一个基于Vue 3 + Vite + Tailwind CSS构建的现代化穿戴甲品牌电商网站。

## 项目特色

- 🎨 **现代设计**: 采用Tailwind CSS构建，响应式设计，完美适配各种设备
- ⚡ **高性能**: 基于Vite构建，快速热更新和优化构建
- 🛒 **完整功能**: 产品展示、详情页、分类筛选、FAQ系统
- 📱 **移动友好**: 完美适配手机、平板、桌面设备
- 💅 **品牌定制**: 专为穿戴甲品牌设计的UI/UX

## 技术栈

- **前端框架**: Vue 3 (Composition API)
- **构建工具**: Vite
- **样式框架**: Tailwind CSS
- **路由管理**: Vue Router 4
- **状态管理**: Pinia
- **部署平台**: Vercel/Netlify

## 快速开始

### 1. 安装依赖

```bash
npm install
```

### 2. 启动开发服务器

```bash
npm run dev
```

项目将在 http://localhost:7520 启动

### 3. 构建生产版本

```bash
npm run build
```

构建后的文件将生成在 `dist` 目录

## 项目结构

```
pupu-miemie-shop/
├── public/
│   └── images/              # 产品图片和静态资源
├── src/
│   ├── assets/styles/       # 样式文件
│   ├── components/          # Vue组件
│   │   ├── Header.vue       # 头部导航
│   │   ├── Footer.vue       # 底部信息
│   │   ├── ProductCard.vue  # 产品卡片
│   │   ├── HeroBanner.vue   # 主横幅
│   │   └── FaqAccordion.vue # FAQ折叠组件
│   ├── data/
│   │   └── products.js      # 产品数据
│   ├── router/
│   │   └── index.js         # 路由配置
│   ├── views/               # 页面组件
│   │   ├── Home.vue         # 首页
│   │   ├── Products.vue     # 产品列表
│   │   ├── ProductDetail.vue # 产品详情
│   │   └── About.vue        # 关于我们
│   ├── App.vue              # 根组件
│   └── main.js              # 入口文件
├── index.html
├── package.json
├── vite.config.js
├── tailwind.config.js
└── postcss.config.js
```

## 主要功能

### 1. 产品展示
- 8款精选穿戴甲产品
- 分类筛选（引流款、利润款、潜力款）
- 产品详情页展示
- 相关产品推荐

### 2. 响应式设计
- 移动端优化
- 平板适配
- 桌面端完美显示

### 3. 用户体验
- 流畅的交互动画
- 直观的导航结构
- FAQ问答系统
- 社群入口引导

## 部署指南

### Vercel部署（推荐）

1. 将代码推送到GitHub
2. 连接Vercel账号到GitHub
3. 导入项目并自动部署
4. 配置域名（可选）

### Netlify部署

1. 将代码推送到GitHub
2. 连接Netlify账号到GitHub
3. 设置构建命令: `npm run build`
4. 设置发布目录: `dist`
5. 自动部署完成

## 自定义配置

### 1. 产品数据
编辑 `src/data/products.js` 文件，更新产品信息：

```javascript
export const products = [
  {
    id: 1,
    name: "产品名称",
    mainImage: "/images/product-image.jpg",
    gallery: ["/images/product-1.jpg", "/images/product-2.jpg"],
    price: 39.9,
    category: "引流款",
    styleTags: ["甜美风", "约会必备"],
    description: "产品描述...",
    advantages: [
      { icon: "🎨", text: "产品优势..." }
    ],
    douyinUrl: "https://v.douyin.com/你的抖店链接"
  }
]
```

### 2. 品牌信息
修改以下文件中的品牌信息：
- `src/components/Header.vue` - 导航栏品牌名称
- `src/components/Footer.vue` - 底部联系信息
- `src/views/Home.vue` - 首页品牌介绍
- `src/views/About.vue` - 关于我们页面

### 3. 样式主题
编辑 `tailwind.config.js` 文件自定义颜色主题：

```javascript
theme: {
  extend: {
    colors: {
      primary: {
        50: '#fdf2f8',
        // ... 其他颜色
      }
    }
  }
}
```

## 图片资源

1. 将产品图片放置在 `public/images/` 目录
2. 按照以下命名规范：
   - 主图: `product-{id}-main.jpg`
   - 多角度图: `product-{id}-{number}.jpg`

## 浏览器支持

- Chrome (推荐)
- Firefox
- Safari
- Edge

## 联系我们

- 微信客服: pupumiemie
- 抖音官方: @噗噗咩咩
- 邮箱: service@pupumiemie.com

## 许可证

MIT License