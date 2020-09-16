<template>
  <div v-bind:class="flipped ? 'flip-container flipped': 'flip-container'">
    <div
      class="flipper"
      v-on:mouseover="flipped=true"
      v-on:mouseout="flipped=false"
    >
      <div class="front">
        <slot name="front">
        </slot>
      </div>
      <div class="back">
        <slot name="back">
        </slot>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'FlipCard',
  data: function() {
    return {
        flipped: false
    };
  }
};
</script>

<style type='text/css' scoped>

</style>