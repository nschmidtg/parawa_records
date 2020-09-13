// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

/* eslint no-undef: 0 */
import Vue from 'vue/dist/vue.esm';


import PostGrid from '../components/post-grid'
import PostSpotify from '../components/post-spotify'
import PostSoundcloud from '../components/post-soundcloud'
import Header from '../components/header'
import About from '../components/about'
import Footer from '../components/footer'
import Filter from '../components/filter'


Vue.component('header-component', Header);
Vue.component('post-grid', PostGrid);
Vue.component('post-spotify', PostSpotify);
Vue.component('post-soundcloud', PostSoundcloud);
Vue.component('about', About);
Vue.component('footer-component', Footer);
Vue.component('filter-component', Filter);

document.addEventListener('DOMContentLoaded', () => {
  return new Vue({
    el: '#app',
  });
});
