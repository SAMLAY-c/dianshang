<template>
  <div class="py-8">
    <div class="container mx-auto px-4">
      <!-- Page Header -->
      <div class="text-center mb-12">
        <h1 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
          产品中心
        </h1>
        <p class="text-lg text-gray-600 max-w-2xl mx-auto">
          探索我们的全系列穿戴甲产品，找到最适合您的款式
        </p>
      </div>

      <!-- Filter Pills -->
      <div class="flex flex-wrap justify-center gap-3 mb-8">
        <button 
          @click="selectedCategory = '全部'"
          :class="[
            'px-6 py-2 rounded-full transition-all duration-200',
            selectedCategory === '全部' 
              ? 'bg-primary-600 text-white' 
              : 'bg-white text-gray-700 hover:bg-gray-100'
          ]"
        >
          全部产品
        </button>
        <button 
          @click="selectedCategory = '引流款'"
          :class="[
            'px-6 py-2 rounded-full transition-all duration-200',
            selectedCategory === '引流款' 
              ? 'bg-primary-600 text-white' 
              : 'bg-white text-gray-700 hover:bg-gray-100'
          ]"
        >
          引流款
        </button>
        <button 
          @click="selectedCategory = '利润款'"
          :class="[
            'px-6 py-2 rounded-full transition-all duration-200',
            selectedCategory === '利润款' 
              ? 'bg-primary-600 text-white' 
              : 'bg-white text-gray-700 hover:bg-gray-100'
          ]"
        >
          利润款
        </button>
        <button 
          @click="selectedCategory = '潜力款'"
          :class="[
            'px-6 py-2 rounded-full transition-all duration-200',
            selectedCategory === '潜力款' 
              ? 'bg-primary-600 text-white' 
              : 'bg-white text-gray-700 hover:bg-gray-100'
          ]"
        >
          潜力款
        </button>
      </div>

      <!-- Products Grid -->
      <div v-if="filteredProducts.length > 0" class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
        <ProductCard 
          v-for="product in filteredProducts" 
          :key="product.id" 
          :product="product" 
        />
      </div>

      <!-- Empty State -->
      <div v-else class="text-center py-12">
        <div class="text-6xl mb-4">🔍</div>
        <h3 class="text-xl font-semibold text-gray-800 mb-2">暂无产品</h3>
        <p class="text-gray-600">该分类下暂无产品，请选择其他分类</p>
      </div>

      <!-- Category Info -->
      <div class="mt-16 grid grid-cols-1 md:grid-cols-3 gap-8">
        <div class="card p-6 text-center">
          <div class="text-4xl mb-4">⚡</div>
          <h3 class="text-lg font-semibold text-gray-800 mb-2">引流款</h3>
          <p class="text-gray-600 text-sm">
            高性价比入门选择，价格亲民，品质保证，适合初次尝试的用户
          </p>
        </div>
        
        <div class="card p-6 text-center">
          <div class="text-4xl mb-4">💎</div>
          <h3 class="text-lg font-semibold text-gray-800 mb-2">利润款</h3>
          <p class="text-gray-600 text-sm">
            精品设计，工艺考究，独特款式，为追求品质的用户提供优质选择
          </p>
        </div>
        
        <div class="card p-6 text-center">
          <div class="text-4xl mb-4">🌟</div>
          <h3 class="text-lg font-semibold text-gray-800 mb-2">潜力款</h3>
          <p class="text-gray-600 text-sm">
            新兴潮流款式，融合最新设计理念，为时尚达人提供独特选择
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, computed } from 'vue'
import { products } from '@/data/products.js'
import ProductCard from '@/components/ProductCard.vue'

const selectedCategory = ref('全部')

const filteredProducts = computed(() => {
  if (selectedCategory.value === '全部') {
    return products
  }
  return products.filter(product => product.category === selectedCategory.value)
})
</script>