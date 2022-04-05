<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "Welcome to Vue.js!",
      balls: []
    };
  },
  created: function () {
    console.log(this.balls)
  },
  methods: {
    ballsIndex: function () {
      axios.get("http://localhost:3000/balls").then(request =>
        console.log(request.data))
    }
  },
};
</script>

<template>
  <div class="home">
    <h1>{{ message }}</h1>
  </div>
</template>

<style></style>