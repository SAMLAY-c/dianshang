<template>
  <div v-if="product" class="py-8">
    <div class="container mx-auto px-4">
      <!-- Breadcrumb -->
      <nav class="flex items-center space-x-2 text-sm text-gray-600 mb-8">
        <RouterLink to="/" class="hover:text-primary-600">首页</RouterLink>
        <span>/</span>
        <RouterLink to="/products" class="hover:text-primary-600">产品中心</RouterLink>
        <span>/</span>
        <span class="text-gray-900">{{ product.name }}</span>
      </nav>

      <!-- Product Detail -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-12">
        <!-- Left: Product Images -->
        <div>
          <div class="aspect-square bg-gray-100 rounded-lg overflow-hidden mb-4">
            <img 
              :src="currentImage" 
              :alt="product.name"
              class="w-full h-full object-cover"
            />
          </div>
          
          <!-- Thumbnail Gallery -->
          <div class="grid grid-cols-4 gap-2">
            <button
              v-for="(image, index) in allImages"
              :key="index"
              @click="currentImage = image"
              :class="[
                'aspect-square rounded-lg overflow-hidden border-2 transition-all duration-200',
                currentImage === image ? 'border-primary-600' : 'border-transparent hover:border-gray-300'
              ]"
            >
              <img 
                :src="image" 
                :alt="`${product.name} - ${index + 1}`"
                class="w-full h-full object-cover"
              />
            </button>
          </div>
        </div>

        <!-- Right: Product Info -->
        <div>
          <!-- Category Badge -->
          <div class="mb-4">
            <span class="bg-primary-100 text-primary-700 px-3 py-1 rounded-full text-sm font-medium">
              {{ product.category }}
            </span>
          </div>

          <!-- Product Title -->
          <h1 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
            {{ product.name }}
          </h1>

          <!-- Price -->
          <div class="mb-6">
            <span class="text-3xl font-bold text-primary-600">
              ¥{{ product.price }}
            </span>
            <span class="text-gray-500 ml-2">包邮</span>
          </div>

          <!-- Style Tags -->
          <div class="mb-6">
            <h3 class="text-sm font-semibold text-gray-700 mb-2">风格标签</h3>
            <div class="flex flex-wrap gap-2">
              <span 
                v-for="tag in product.styleTags" 
                :key="tag"
                class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"
              >
                {{ tag }}
              </span>
            </div>
          </div>

          <!-- Description -->
          <div class="mb-8">
            <h3 class="text-lg font-semibold text-gray-800 mb-3">产品描述</h3>
            <p class="text-gray-700 leading-relaxed">
              {{ product.description }}
            </p>
          </div>

          <!-- Advantages -->
          <div class="mb-8">
            <h3 class="text-lg font-semibold text-gray-800 mb-4">产品优势</h3>
            <div class="space-y-3">
              <div 
                v-for="advantage in product.advantages" 
                :key="advantage.text"
                class="flex items-start space-x-3"
              >
                <span class="text-xl mt-0.5">{{ advantage.icon }}</span>
                <p class="text-gray-700">{{ advantage.text }}</p>
              </div>
            </div>
          </div>

          <!-- Action Buttons -->
          <div class="space-y-4">
            <a 
              :href="product.douyinUrl" 
              target="_blank"
              class="w-full bg-black text-white py-4 rounded-lg font-semibold text-lg hover:bg-primary-600 transition-colors duration-300 flex items-center justify-center space-x-2"
            >
              <span>🛒</span>
              <span>前往抖店购买</span>
            </a>
            
            <p class="text-sm text-gray-500 text-center">
              将在抖音App中打开购买页面
            </p>

            <!-- Contact Info -->
            <div class="bg-gray-50 rounded-lg p-4 mt-6">
              <h4 class="font-semibold text-gray-800 mb-2">购买咨询</h4>
              <div class="space-y-2 text-sm text-gray-600">
                <div class="flex items-center space-x-2">
                  <span>💬</span>
                  <span>微信客服：pupumiemie</span>
                </div>
                <div class="flex items-center space-x-2">
                  <span>📱</span>
                  <span>抖音私信：噗噗咩咩</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Related Products -->
      <section class="mt-16">
        <h2 class="text-2xl font-bold text-gray-900 mb-8">相关推荐</h2>
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          <ProductCard 
            v-for="relatedProduct in relatedProducts" 
            :key="relatedProduct.id" 
            :product="relatedProduct" 
          />
        </div>
      </section>
    </div>
  </div>

  <!-- Loading State -->
  <div v-else class="container mx-auto px-4 py-20 text-center">
    <div class="text-6xl mb-4">⏳</div>
    <h3 class="text-xl font-semibold text-gray-800 mb-2">产品加载中...</h3>
    <p class="text-gray-600">请稍候，正在为您加载产品信息</p>
  </div>

  <!-- Not Found State -->
  <div v-if="!product && !loading" class="container mx-auto px-4 py-20 text-center">
    <div class="text-6xl mb-4">🔍</div>
    <h3 class="text-xl font-semibold text-gray-800 mb-2">产品未找到</h3>
    <p class="text-gray-600 mb-6">抱歉，未找到相关产品信息</p>
    <RouterLink to="/products" class="btn-primary">
      返回产品列表
    </RouterLink>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import { useRoute, RouterLink } from 'vue-router'
import { products } from '@/data/products.js'
import ProductCard from '@/components/ProductCard.vue'

const route = useRoute()
const product = ref(null)
const loading = ref(true)
const currentImage = ref('')

const allImages = computed(() => {
  if (!product.value) return []
  return [product.value.mainImage, ...product.value.gallery]
})

const relatedProducts = computed(() => {
  if (!product.value) return []
  return products
    .filter(p => p.id !== product.value.id)
    .slice(0, 4)
})

onMounted(() => {
  const productId = parseInt(route.params.id)
  product.value = products.find(p => p.id === productId)
  
  if (product.value) {
    currentImage.value = product.value.mainImage
  }
  
  loading.value = false
})
</script>