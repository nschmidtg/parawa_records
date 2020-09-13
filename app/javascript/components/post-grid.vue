<template>
  <div class="main-content">
    <h2>
      Portafolio
    </h2>
    <filter
      :posts="posts"
    >
    </filter>
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

export default {
  
  data() {
    return {
      posts: {
        type: Object,
        default: [],
      }
    };
  },
  methods: {
    filterPosts(category){

    },
    whichComponent(value) {
      console.log(value)
      switch(value) {
        case 1:
          return "post-spotify"
          break;
        case 2:
          return "post-soundcloud"
          break;
        default:
          // code block
      }
    }
  },
  mounted() {
    if (!this.initialLoad) {
      getPosts()
        .then((response) => {
          this.posts = response.data.data
          console.log(response)
        });
      console.log(this.posts)
    }
  },
}
</script>

<style lang="scss">

</style>
