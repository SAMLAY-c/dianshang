<template>
  <footer class="bg-gray-900 text-white">
    <div class="container mx-auto px-4 py-12">
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
        <!-- Brand Info -->
        <div>
          <div class="flex items-center space-x-2 mb-4">
            <span class="text-2xl">💅</span>
            <span class="text-xl font-bold">噗噗咩咩</span>
          </div>
          <p class="text-gray-300 text-sm leading-relaxed">
            您的指尖魔法师，专注于提供便捷、健康、高性价比的穿戴甲体验。
          </p>
        </div>

        <!-- Quick Links -->
        <div>
          <h3 class="text-lg font-semibold mb-4">快速导航</h3>
          <ul class="space-y-2">
            <li>
              <RouterLink to="/" class="text-gray-300 hover:text-white transition-colors duration-200">
                首页
              </RouterLink>
            </li>
            <li>
              <RouterLink to="/products" class="text-gray-300 hover:text-white transition-colors duration-200">
                产品中心
              </RouterLink>
            </li>
            <li>
              <RouterLink to="/about" class="text-gray-300 hover:text-white transition-colors duration-200">
                关于我们
              </RouterLink>
            </li>
          </ul>
        </div>

        <!-- Contact Info -->
        <div>
          <h3 class="text-lg font-semibold mb-4">联系我们</h3>
          <div class="space-y-2 text-gray-300">
            <div class="flex items-center space-x-2">
              <span>📱</span>
              <span>抖音：噗噗咩咩</span>
            </div>
            <div class="flex items-center space-x-2">
              <span>💬</span>
              <span>微信客服：pupumiemie</span>
            </div>
            <div class="flex items-center space-x-2">
              <span>📧</span>
              <span>邮箱：service@pupumiemie.com</span>
            </div>
          </div>
        </div>
      </div>

      <!-- Bottom Bar -->
      <div class="border-t border-gray-800 mt-8 pt-8">
        <div class="flex flex-col md:flex-row justify-between items-center">
          <p class="text-gray-400 text-sm">
            © 2024 噗噗咩咩. All rights reserved.
          </p>
          <div class="flex space-x-4 mt-4 md:mt-0">
            <a href="#" class="text-gray-400 hover:text-white transition-colors duration-200">
              <span class="text-lg">📱</span>
            </a>
            <a href="#" class="text-gray-400 hover:text-white transition-colors duration-200">
              <span class="text-lg">💬</span>
            </a>
            <a href="#" class="text-gray-400 hover:text-white transition-colors duration-200">
              <span class="text-lg">🛒</span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </footer>
</template>

<script setup>
import { RouterLink } from 'vue-router'
</script>