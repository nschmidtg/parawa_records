<template>
  <div class="main-content">
    <h2>
      Portafolio
    </h2>
    <filter-component
      :categories="categories"
      @get-filtered-posts="filterPosts($event)"
      :active_id="categories[categories.length-1].id"
    >
    </filter-component>
    <div class="row">
      <div
        v-for="post in posts"
        :key="post.key"
      >
        <component v-bind:is="whichComponent(post.contentType)"
          :post="post"
        >
        </component>
      </div>
    </div>
  </div>
</template>

<script>
import { getCategories } from '../api/category';

export default {
  
  data() {
    return {
      posts: {
        type: Object,
        default: [],
      },
      categories: {
        type: Array,
        default: [],
      },
    };
  },
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
    filterPosts(e){
      console.log(e);
      this.posts = e;
    }
  },
  mounted() {
    if (!this.initialLoad) {
      getCategories()
        .then((response_cat) => {
          this.categories = response_cat.data.data
          this.posts = this.categories[this.categories.length-1].posts
          console.log(this.posts)
        });
    }
  },
}
</script>

<style lang="scss">

</style>
