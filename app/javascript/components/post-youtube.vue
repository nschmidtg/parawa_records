<template>
  <div class="column">
    <div class="card">
      <h3>
        {{ post.name }}
      </h3>
      <iframe
        width="100%"
        height="250"
        :src="post.url"
        frameborder="0"
        allow="accelerometer;
        encrypted-media;
        gyroscope;
        picture-in-picture"
        allowfullscreen
      >
      </iframe>
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
