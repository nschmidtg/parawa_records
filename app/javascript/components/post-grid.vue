<template>
  <div class="main-content">
    <h2>
      Portafolio
    </h2>
    <filter-component
      :categories="categories"
      @get-filtered-posts="filterPosts($event)"
      :active_id="categories.length"
    >
    </filter-component>
    <div class="row">
      <generic-card
        v-for="post in posts"
        :key="post.id"
        :post="post"
        :show="toShow[post.id]"
      >
      </generic-card>
    </div>
  </div>
</template>

<script>
import { getCategories } from '../api/category';
import { getPosts } from '../api/post';

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
      toShow: {
        type: Object,
        default: null,
      }
    };
  },
  methods: {
    filterPosts(post_ids){
      var toShowHash = {}
      this.posts.map(function(post){
        return toShowHash[post.id] = post_ids.includes(post.id)
      })
      this.toShow = toShowHash
    }
  },
  mounted() {
    if (!this.initialLoad) {
      getCategories()
        .then((response_cat) => {
          this.categories = response_cat.data.data
          this.defaultActiveCat = this.categories.length
          console.log(this.categories.length)
        });
      getPosts()
        .then((response_posts) => {
          this.posts = response_posts.data.data
          var toShowHash = {}
          this.posts.map(function(x) {
            return toShowHash[x.id] = true
          })
          this.toShow = toShowHash
        });
    }
  },
}
</script>