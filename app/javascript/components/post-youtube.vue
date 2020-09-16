<template>
  <iframe
    width="100%"
    height="250"
    :src="url"
    frameborder="0"
    allow="accelerometer;
    encrypted-media;
    gyroscope;
    picture-in-picture"
    allowfullscreen
  >
  </iframe>
</template>

<script>

export default {
  
  props: ['url']
}
</script>

<style lang="scss">

</style>
