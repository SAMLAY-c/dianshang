<template>
  <section class="relative bg-gradient-to-br from-primary-50 to-pink-100 overflow-hidden">
    <!-- Background Pattern -->
    <div class="absolute inset-0 opacity-10">
      <div class="absolute inset-0 bg-repeat" style="background-image: url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNjAiIGhlaWdodD0iNjAiIHZpZXdCb3g9IjAgMCA2MCA2MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPjxnIGZpbGw9IiNlYzQ4OTkiIGZpbGwtb3BhY2l0eT0iMC4xIj48cGF0aCBkPSJNMzYgMzR2LTRoLTJ2NGgtNHYyaDR2NGgydi00aDR2LTJoLTR6bTAtMzBWMGgtMnY0aC00djJoNHY0aDJWNmg0VjRoLTR6TTYgMzR2LTRINHY0SDB2Mmg0djRoMnYtNGg0di0ySDZ6TTYgNFYwSDR2NEgwdjJoNHY0aDJWNmg0VjRINnoiLz48L2c+PC9nPjwvc3ZnPg==');"></div>
    </div>

    <div class="container mx-auto px-4 py-16 md:py-24 relative z-10">
      <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
        <!-- Left Content -->
        <div class="text-center md:text-left">
          <h1 class="text-4xl md:text-6xl font-bold text-gray-900 mb-6">
            噗噗咩咩
            <span class="block text-primary-600">您的指尖魔法师</span>
          </h1>
          
          <p class="text-lg md:text-xl text-gray-700 mb-8 leading-relaxed">
            3分钟便捷穿戴，健康温和不伤甲，超高性价比之选
            <br />
            让美丽触手可及，每周都能拥有新造型
          </p>

          <div class="flex flex-col sm:flex-row gap-4 justify-center md:justify-start">
            <RouterLink 
              to="/products" 
              class="btn-primary text-center"
            >
              探索产品
            </RouterLink>
            <RouterLink 
              to="/about" 
              class="btn-secondary text-center"
            >
              了解更多
            </RouterLink>
          </div>

          <!-- Brand Promise -->
          <div class="mt-12 grid grid-cols-1 sm:grid-cols-3 gap-6">
            <div class="text-center md:text-left">
              <div class="text-3xl mb-2">⏱️</div>
              <h3 class="font-semibold text-gray-800">3分钟便捷</h3>
              <p class="text-sm text-gray-600">随时随地，轻松更换</p>
            </div>
            <div class="text-center md:text-left">
              <div class="text-3xl mb-2">🌿</div>
              <h3 class="font-semibold text-gray-800">健康温和</h3>
              <p class="text-sm text-gray-600">低敏果冻胶，不伤指甲</p>
            </div>
            <div class="text-center md:text-left">
              <div class="text-3xl mb-2">💰</div>
              <h3 class="font-semibold text-gray-800">超高性价比</h3>
              <p class="text-sm text-gray-600">可重复使用，划算之选</p>
            </div>
          </div>
        </div>

        <!-- Right Content - Image Placeholder -->
        <div class="relative">
          <div class="aspect-square bg-gradient-to-br from-primary-200 to-pink-300 rounded-lg flex items-center justify-center">
            <div class="text-6xl text-white opacity-80">💅</div>
          </div>
          
          <!-- Floating Elements -->
          <div class="absolute -top-4 -right-4 bg-white rounded-lg shadow-lg p-4 transform rotate-6">
            <div class="flex items-center space-x-2">
              <span class="text-2xl">✨</span>
              <span class="text-sm font-semibold">新品上市</span>
            </div>
          </div>
          
          <div class="absolute -bottom-4 -left-4 bg-white rounded-lg shadow-lg p-4 transform -rotate-6">
            <div class="flex items-center space-x-2">
              <span class="text-2xl">🎯</span>
              <span class="text-sm font-semibold">热卖推荐</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { RouterLink } from 'vue-router'
</script>