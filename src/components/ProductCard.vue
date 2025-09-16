<template>
  <div class="card group cursor-pointer">
    <RouterLink :to="`/product/${product.id}`" class="block">
      <!-- Product Image -->
      <div class="relative aspect-square overflow-hidden">
        <img 
          :src="product.mainImage" 
          :alt="product.name"
          class="w-full h-full object-cover transition-transform duration-300 group-hover:scale-105"
        />
        
        <!-- Category Badge -->
        <div class="absolute top-2 left-2 bg-primary-600 text-white text-xs px-2 py-1 rounded-full">
          {{ product.category }}
        </div>
        
        <!-- Hover Overlay -->
        <div class="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-20 transition-all duration-300 flex items-center justify-center">
          <span class="text-white opacity-0 group-hover:opacity-100 transition-opacity duration-300 bg-primary-600 px-4 py-2 rounded-lg">
            查看详情
          </span>
        </div>
      </div>

      <!-- Product Info -->
      <div class="p-4">
        <h3 class="text-lg font-semibold text-gray-800 mb-2 truncate">
          {{ product.name }}
        </h3>
        
        <!-- Style Tags -->
        <div class="flex flex-wrap gap-1 mb-3">
          <span 
            v-for="tag in product.styleTags" 
            :key="tag"
            class="text-xs bg-gray-100 text-gray-600 px-2 py-1 rounded-full"
          >
            {{ tag }}
          </span>
        </div>
        
        <!-- Price -->
        <div class="flex items-center justify-between">
          <span class="text-xl font-bold text-primary-600">
            ¥{{ product.price }}
          </span>
          <button 
            @click.prevent="addToCart"
            class="bg-primary-600 text-white p-2 rounded-lg hover:bg-primary-700 transition-colors duration-200"
          >
            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4" />
            </svg>
          </button>
        </div>
      </div>
    </RouterLink>
  </div>
</template>

<script setup>
import { RouterLink } from 'vue-router'

defineProps({
  product: {
    type: Object,
    required: true
  }
})

const addToCart = () => {
  // 这里可以添加购物车逻辑
  console.log('添加到购物车')
}
</script>