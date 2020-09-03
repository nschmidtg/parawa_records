<template>
  <div class="column">
    <div class="card">
      <h3>
        {{ post.name }}
      </h3>
      <iframe width="100%" height="250" scrolling="no" frameborder="no" allow="autoplay" :src="post.url">
      </iframe>
    </div>
  </div>
</template>

<script>

export default {
  
  props: {
    post: {
      type: Object,
      defaul: null,
    }
  },
  methods: {
  },
  mounted() {
   
  },
}
</script>

<style lang="scss">

</style>
