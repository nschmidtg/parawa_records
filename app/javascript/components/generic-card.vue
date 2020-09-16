<template>
  <transition name="slide-fade">
    <div class="column" v-if="show">
      <div class="card">
        <h3>
          {{ post.name }}
        </h3>
        <component
          :is="whichComponent(post.contentType)"
          :url="post.url"
        >
        </component>
      </div>
    </div>
  </transition>
</template>

<script>

export default {
  
  props: ['post', 'show'],
  methods: {
    whichComponent(value) {
      switch(value) {
        case 1:
          return "post-spotify"
        case 2:
          return "post-soundcloud"
        case 3:
          return "post-youtube"
      }
    },
  }
}
</script>

<style lang="scss">

</style>
