<template>
  <transition name="slide-fade">
    <flip-card v-if="show">
      <template slot="front">
        <div class="column">
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
      </template>
      <template slot="back">
        <span>Thought u could get rid of me loser?</span>
      </template>
    </flip-card>
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
