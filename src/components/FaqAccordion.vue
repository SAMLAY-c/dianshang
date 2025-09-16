<template>
  <div class="border-b border-gray-200">
    <button
      @click="toggleOpen"
      class="w-full flex items-center justify-between py-4 text-left hover:text-primary-600 transition-colors duration-200"
    >
      <span class="text-lg font-semibold">{{ title }}</span>
      <svg
        class="w-5 h-5 transform transition-transform duration-200"
        :class="{ 'rotate-180': isOpen }"
        fill="none"
        stroke="currentColor"
        viewBox="0 0 24 24"
      >
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
      </svg>
    </button>
    
    <div
      v-show="isOpen"
      class="pb-4"
    >
      <div class="text-gray-600 leading-relaxed">
        <slot />
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const props = defineProps({
  title: {
    type: String,
    required: true
  }
})

const isOpen = ref(false)

const toggleOpen = () => {
  isOpen.value = !isOpen.value
}
</script>