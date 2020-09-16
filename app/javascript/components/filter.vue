<template>
  <div class="filter-content">
    <div class="grouped-buttons">
      <a class="tag"
        v-for="category in categories"
        :key="category.id"
        @click="selectedCategory(category)"
        :class="checkActive(category)"
      >
        {{ category.name }}
      </a>  
    </div>  
  </div>
</template>

<script>

export default {
  
  props: ['categories', 'active_id'],
  data() {
    return {
      current_active: {
        type: Number,
        default: 0,
      }
    };
  },
  methods: {
    selectedCategory(category) {
      this.$emit('get-filtered-posts', category.posts.map(function(x){return x.id}));
      this.current_active = category.id
    },
    checkActive(category) {
      if(category.id === this.current_active) {
        return 'active'
      }
    }
  },
  mounted() {
    this.current_active = this.active_id
  },
}
</script>

<style lang="scss">

</style>