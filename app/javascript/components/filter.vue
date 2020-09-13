<template>
  <div class="filter-content">
    <p
      v-for="category in categories"
      :key="category.id"
      @click="selectedCategory(category)"
    >
      {{ category.name }}
    </p>  
  </div>
</template>

<script>

export default {
  
  props: ['categories'],
  methods: {
    selectedCategory(category) {
      alert(category.name)
      this.$emit('get-filtered-posts', category.posts);
    },
  }
}
</script>

<style lang="scss">

</style>