<template>
  <div class="column">
    <div class="card">
      <h3>
        {{ post.name }}
      </h3>
      <iframe :src="post.url" width="100%" height="250" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
    </div>
  </div>
</template>

<script>

export default {
  
  props: ['post']
}
</script>

<style lang="scss">

</style>
