<template>
  <div class="py-8">
    <div class="container mx-auto px-4">
      <!-- Page Header -->
      <div class="text-center mb-12">
        <h1 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
          关于噗噗咩咩
        </h1>
        <p class="text-lg text-gray-600 max-w-2xl mx-auto">
          了解我们的品牌故事，探索穿戴甲的无限可能
        </p>
      </div>

      <!-- Brand Story Section -->
      <section class="mb-16">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
          <div>
            <h2 class="text-2xl font-bold text-gray-900 mb-6">品牌故事</h2>
            <p class="text-gray-700 leading-relaxed mb-6">
              噗噗咩咩诞生于对美的热爱和对便捷生活的追求。我们深知现代女性的生活节奏快速，
              但对美的追求从未停止。传统的美甲方式不仅耗时，而且成本高昂，让许多爱美的女性望而却步。
            </p>
            <p class="text-gray-700 leading-relaxed mb-6">
              因此，我们致力于打造"便捷、健康、高性价比"的穿戴甲体验。每一款产品都经过精心设计，
              采用优质材料，确保在提供美丽的同时，也呵护您的指甲健康。
            </p>
            <div class="grid grid-cols-2 gap-4">
              <div class="bg-primary-50 rounded-lg p-4 text-center">
                <div class="text-3xl mb-2">🎯</div>
                <h3 class="font-semibold text-gray-800">精准定位</h3>
                <p class="text-sm text-gray-600 mt-1">19-30岁女性客群</p>
              </div>
              <div class="bg-primary-50 rounded-lg p-4 text-center">
                <div class="text-3xl mb-2">💝</div>
                <h3 class="font-semibold text-gray-800">用心服务</h3>
                <p class="text-sm text-gray-600 mt-1">专业客服团队</p>
              </div>
            </div>
          </div>
          <div class="bg-gradient-to-br from-primary-200 to-pink-300 rounded-lg p-8 text-center">
            <div class="text-8xl mb-4">💅</div>
            <h3 class="text-2xl font-bold text-white mb-2">让美丽触手可及</h3>
            <p class="text-white text-opacity-90">
              3分钟便捷穿戴，健康温和不伤甲，超高性价比之选
            </p>
          </div>
        </div>
      </section>

      <!-- Brand Values -->
      <section class="mb-16">
        <h2 class="text-2xl font-bold text-gray-900 mb-8 text-center">品牌价值</h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div class="card p-6 text-center">
            <div class="text-4xl mb-4">⏱️</div>
            <h3 class="text-lg font-semibold text-gray-800 mb-2">便捷高效</h3>
            <p class="text-gray-600 text-sm">
              3分钟即可完成穿戴，随时随地轻松更换，适应快节奏的现代生活
            </p>
          </div>
          
          <div class="card p-6 text-center">
            <div class="text-4xl mb-4">🌿</div>
            <h3 class="text-lg font-semibold text-gray-800 mb-2">健康温和</h3>
            <p class="text-gray-600 text-sm">
              采用低敏果冻胶，不伤指甲，让美丽与健康并存
            </p>
          </div>
          
          <div class="card p-6 text-center">
            <div class="text-4xl mb-4">💰</div>
            <h3 class="text-lg font-semibold text-gray-800 mb-2">高性价比</h3>
            <p class="text-gray-600 text-sm">
              可重复使用，价格亲民，让更多人享受美甲的乐趣
            </p>
          </div>
        </div>
      </section>

      <!-- FAQ Section -->
      <section class="mb-16">
        <div class="max-w-3xl mx-auto">
          <h2 class="text-2xl font-bold text-gray-900 mb-8 text-center">常见问题</h2>
          <div class="card p-6">
            <FaqAccordion title="贴久了会伤指甲吗？">
              <p class="text-gray-700 leading-relaxed">
                不会哦！咱们的穿戴甲用的是低敏果冻胶，撕下来的时候轻轻揭，不会带掉指甲本身的甲油，也不会损伤甲面，放心戴～
              </p>
            </FaqAccordion>
            
            <FaqAccordion title="能重复戴吗？">
              <p class="text-gray-700 leading-relaxed">
                必须能！只要果冻胶没脏，卸下来后清洁干净，下次还能接着用，一副能戴3-5次，超划算～
              </p>
            </FaqAccordion>
            
            <FaqAccordion title="手胖能戴吗？">
              <p class="text-gray-700 leading-relaxed">
                当然！咱们有S、M、L三个码数，手胖的姐妹选L码，方圆甲型还能修饰手型，显手瘦。不确定码数的姐妹可以在抖音私信我们，帮你们推荐～
              </p>
            </FaqAccordion>
            
            <FaqAccordion title="怎么选择合适的尺寸？">
              <p class="text-gray-700 leading-relaxed">
                我们提供详细的尺寸测量指南，您可以根据自己的指甲宽度选择合适的尺寸。如果不确定，也可以联系我们客服进行专业推荐。
              </p>
            </FaqAccordion>
            
            <FaqAccordion title="佩戴时间长吗？">
              <p class="text-gray-700 leading-relaxed">
                正常佩戴可以保持1-2周，具体时间取决于个人使用习惯和保养情况。避免长时间接触水和化学品，可以延长佩戴时间。
              </p>
            </FaqAccordion>
          </div>
        </div>
      </section>

      <!-- Contact Section -->
      <section class="mb-16">
        <div class="bg-gradient-to-r from-primary-600 to-pink-600 rounded-lg p-8 md:p-12 text-white text-center">
          <h2 class="text-2xl md:text-3xl font-bold mb-4">联系我们</h2>
          <p class="text-primary-100 mb-8 max-w-2xl mx-auto">
            有任何问题或建议，欢迎随时联系我们，我们将竭诚为您服务
          </p>
          
          <div class="grid grid-cols-1 md:grid-cols-3 gap-6 max-w-4xl mx-auto">
            <div class="bg-white bg-opacity-20 rounded-lg p-4">
              <div class="text-3xl mb-2">📱</div>
              <h3 class="font-semibold mb-1">抖音官方</h3>
              <p class="text-sm text-primary-100">@噗噗咩咩</p>
            </div>
            
            <div class="bg-white bg-opacity-20 rounded-lg p-4">
              <div class="text-3xl mb-2">💬</div>
              <h3 class="font-semibold mb-1">微信客服</h3>
              <p class="text-sm text-primary-100">pupumiemie</p>
            </div>
            
            <div class="bg-white bg-opacity-20 rounded-lg p-4">
              <div class="text-3xl mb-2">📧</div>
              <h3 class="font-semibold mb-1">邮箱联系</h3>
              <p class="text-sm text-primary-100">service@pupumiemie.com</p>
            </div>
          </div>
        </div>
      </section>

      <!-- Join Community -->
      <section class="text-center">
        <h2 class="text-2xl font-bold text-gray-900 mb-4">加入我们的社区</h2>
        <p class="text-gray-600 mb-6 max-w-2xl mx-auto">
          扫码加入我们的粉丝群，获取最新产品信息、专属优惠和美甲技巧分享
        </p>
        
        <div class="bg-white rounded-lg shadow-lg p-6 max-w-sm mx-auto">
          <div class="bg-gray-100 rounded-lg p-8 mb-4">
            <div class="text-6xl mb-2">📱</div>
            <p class="text-gray-600">微信群二维码</p>
          </div>
          <p class="text-sm text-gray-500">
            微信扫码加入，与爱美的你一起变美
          </p>
        </div>
      </section>
    </div>
  </div>
</template>

<script setup>
import FaqAccordion from '@/components/FaqAccordion.vue'
</script>