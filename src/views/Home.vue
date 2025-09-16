<template>
  <div>
    <!-- Hero Banner -->
    <HeroBanner />

    <!-- Featured Products -->
    <section class="py-16 bg-white">
      <div class="container mx-auto px-4">
        <div class="text-center mb-12">
          <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
            热卖推荐
          </h2>
          <p class="text-lg text-gray-600 max-w-2xl mx-auto">
            精选人气款式，让您的指尖焕发迷人光彩
          </p>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          <ProductCard 
            v-for="product in featuredProducts" 
            :key="product.id" 
            :product="product" 
          />
        </div>

        <div class="text-center mt-12">
          <RouterLink 
            to="/products" 
            class="btn-secondary"
          >
            查看全部产品
          </RouterLink>
        </div>
      </div>
    </section>

    <!-- Brand Story -->
    <section class="py-16 bg-primary-50">
      <div class="container mx-auto px-4">
        <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
          <div>
            <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-6">
              关于噗噗咩咩
            </h2>
            <p class="text-lg text-gray-700 mb-6 leading-relaxed">
              我们聚焦19-30岁女性客群，致力于打造"便捷、健康、高性价比"的穿戴甲体验。
              让你无需花费高昂的时间和金钱，就能轻松拥有百变美甲，展现每日不同的心动。
            </p>
            <div class="space-y-4">
              <div class="flex items-start space-x-3">
                <span class="text-2xl">💅</span>
                <div>
                  <h3 class="font-semibold text-gray-800">专业设计</h3>
                  <p class="text-gray-600">紧跟时尚潮流，设计独特且多样化</p>
                </div>
              </div>
              <div class="flex items-start space-x-3">
                <span class="text-2xl">🎨</span>
                <div>
                  <h3 class="font-semibold text-gray-800">丰富款式</h3>
                  <p class="text-gray-600">从日常通勤到约会派对，满足各种场合需求</p>
                </div>
              </div>
              <div class="flex items-start space-x-3">
                <span class="text-2xl">💝</span>
                <div>
                  <h3 class="font-semibold text-gray-800">贴心服务</h3>
                  <p class="text-gray-600">专业客服团队，为您提供贴心购物指导</p>
                </div>
              </div>
            </div>
          </div>
          <div class="bg-gradient-to-br from-primary-200 to-pink-300 rounded-lg p-8 text-center">
            <div class="text-8xl mb-4">💕</div>
            <h3 class="text-2xl font-bold text-white mb-2">让美丽触手可及</h3>
            <p class="text-white text-opacity-90">
              每一款产品都承载着我们对美的追求和对用户的用心
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Community CTA -->
    <section class="py-16 bg-gradient-to-r from-primary-600 to-pink-600 text-white">
      <div class="container mx-auto px-4 text-center">
        <h2 class="text-3xl md:text-4xl font-bold mb-6">
          加入咩咩粉丝群
        </h2>
        <p class="text-lg mb-8 max-w-2xl mx-auto text-primary-100">
          扫码加入我们的粉丝群，享专属优惠和新款剧透！
        </p>
        <div class="bg-white rounded-lg p-8 max-w-md mx-auto">
          <div class="bg-gray-200 rounded-lg p-8 mb-4">
            <div class="text-6xl">📱</div>
            <p class="text-gray-600 mt-2">微信群二维码</p>
          </div>
          <p class="text-gray-600 text-sm">
            微信扫码加入，与更多爱美的小伙伴一起交流
          </p>
        </div>
      </div>
    </section>

    <!-- Customer Reviews -->
    <section class="py-16 bg-white">
      <div class="container mx-auto px-4">
        <div class="text-center mb-12">
          <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
            用户好评
          </h2>
          <p class="text-lg text-gray-600">
            看看大家怎么说
          </p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div class="card p-6">
            <div class="flex items-center mb-4">
              <div class="text-yellow-400">★★★★★</div>
            </div>
            <p class="text-gray-700 mb-4">
              "超级好看！质量也很好，戴了好几天都没有掉，朋友都说很漂亮～"
            </p>
            <div class="flex items-center space-x-2">
              <span class="text-2xl">👩</span>
              <span class="text-gray-600">小美</span>
            </div>
          </div>

          <div class="card p-6">
            <div class="flex items-center mb-4">
              <div class="text-yellow-400">★★★★★</div>
            </div>
            <p class="text-gray-700 mb-4">
              "第一次买穿戴甲，没想到这么方便！价格也很实惠，已经推荐给闺蜜了"
            </p>
            <div class="flex items-center space-x-2">
              <span class="text-2xl">👩</span>
              <span class="text-gray-600">甜甜</span>
            </div>
          </div>

          <div class="card p-6">
            <div class="flex items-center mb-4">
              <div class="text-yellow-400">★★★★★</div>
            </div>
            <p class="text-gray-700 mb-4">
              "款式很潮，包装也很精美。戴着很舒服，不会影响日常工作，强烈推荐！"
            </p>
            <div class="flex items-center space-x-2">
              <span class="text-2xl">👩</span>
              <span class="text-gray-600">小雪</span>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import { products } from '@/data/products.js'
import ProductCard from '@/components/ProductCard.vue'
import HeroBanner from '@/components/HeroBanner.vue'

const featuredProducts = ref([])

onMounted(() => {
  // 选择前4个产品作为推荐
  featuredProducts.value = products.slice(0, 4)
})
</script>