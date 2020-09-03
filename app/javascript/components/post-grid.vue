<template>
  <div>
    <h3>
      Portfolio
    </h3>
    <div
      v-for="post in posts"
      :key="post.key"
    >
      {{ post.name }}
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
