<template>
  <div>
    <div class="crop">
      <img v-bind:src="studioImage">
      <div class="text-centered-image">
        <h1>NICOLÁS SCHMIDT GUBBINS</h1>
        <h3>PRODUCCIÓN MUSICAL</h3>
      </div>
    </div>

    <div id="navbar">
      <div class="grouped-buttons">
        <a class="active" href="javascript:void(0)">Sobre mí</a>
        <a href="javascript:void(0)">Portafolio</a>
        <a href="javascript:void(0)">Contacto</a>
      </div>  
    </div>
  </div>  
</template>

<script>

var navbar, sticky;
import studioImage from 'images/studioCropped.png';
export default {
   data() {
    return {
      studioImage,
    }
  },
  methods: {
    addSticky() {
      if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky")
      } else {
        navbar.classList.remove("sticky");
      }
    }
  },
  mounted() {
    navbar = document.getElementById("navbar");
    sticky = 300;
    window.addEventListener('scroll', this.addSticky);
  },
}
</script>
