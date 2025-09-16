<template>
  <header class="bg-white shadow-sm sticky top-0 z-50">
    <nav class="container mx-auto px-4 py-4">
      <div class="flex items-center justify-between">
        <!-- Logo -->
        <RouterLink to="/" class="flex items-center space-x-2">
          <span class="text-2xl">💅</span>
          <span class="text-xl font-bold text-primary-600">噗噗咩咩</span>
        </RouterLink>

        <!-- Desktop Navigation -->
        <div class="hidden md:flex items-center space-x-8">
          <RouterLink 
            to="/" 
            class="text-gray-700 hover:text-primary-600 transition-colors duration-200"
            :class="{ 'text-primary-600 font-medium': $route.name === 'home' }"
          >
            首页
          </RouterLink>
          <RouterLink 
            to="/products" 
            class="text-gray-700 hover:text-primary-600 transition-colors duration-200"
            :class="{ 'text-primary-600 font-medium': $route.name === 'products' }"
          >
            产品中心
          </RouterLink>
          <RouterLink 
            to="/about" 
            class="text-gray-700 hover:text-primary-600 transition-colors duration-200"
            :class="{ 'text-primary-600 font-medium': $route.name === 'about' }"
          >
            关于我们
          </RouterLink>
        </div>

        <!-- Mobile Menu Button -->
        <button 
          @click="toggleMobileMenu" 
          class="md:hidden p-2 rounded-lg hover:bg-gray-100"
        >
          <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
          </svg>
        </button>
      </div>

      <!-- Mobile Navigation -->
      <div v-if="isMobileMenuOpen" class="md:hidden mt-4 pb-4">
        <div class="flex flex-col space-y-2">
          <RouterLink 
            to="/" 
            class="text-gray-700 hover:text-primary-600 transition-colors duration-200 py-2"
            :class="{ 'text-primary-600 font-medium': $route.name === 'home' }"
            @click="closeMobileMenu"
          >
            首页
          </RouterLink>
          <RouterLink 
            to="/products" 
            class="text-gray-700 hover:text-primary-600 transition-colors duration-200 py-2"
            :class="{ 'text-primary-600 font-medium': $route.name === 'products' }"
            @click="closeMobileMenu"
          >
            产品中心
          </RouterLink>
          <RouterLink 
            to="/about" 
            class="text-gray-700 hover:text-primary-600 transition-colors duration-200 py-2"
            :class="{ 'text-primary-600 font-medium': $route.name === 'about' }"
            @click="closeMobileMenu"
          >
            关于我们
          </RouterLink>
        </div>
      </div>
    </nav>
  </header>
</template>

<script setup>
import { ref } from 'vue'
import { RouterLink } from 'vue-router'

const isMobileMenuOpen = ref(false)

const toggleMobileMenu = () => {
  isMobileMenuOpen.value = !isMobileMenuOpen.value
}

const closeMobileMenu = () => {
  isMobileMenuOpen.value = false
}
</script>