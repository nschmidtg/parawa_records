<template>
  <div class="main-content">
    <h2>
      portafolio
    </h2>
    <filter-component
      :categories="categories"
      @get-filtered-posts="filterPosts($event)"
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
import { getPosts } from '../api/post';
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
      }
    },
    filterPosts(e){
      console.log(e);
      this.posts = e;
    }
  },
  mounted() {
    if (!this.initialLoad) {
      getPosts()
        .then((response_post) => {
          this.posts = response_post.data.data
        });
      getCategories()
        .then((response_cat) => {
          this.categories = response_cat.data.data
          console.log(this.categories)
        });
    }
  },
}
</script>

<style lang="scss">

</style>
