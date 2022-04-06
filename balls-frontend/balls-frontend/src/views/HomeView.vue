<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "Welcome to Balls!",
      balls: [],
      newBall: {},
      currentBall: {}
    };
  },
  created: function () {
    this.indexBalls();
  },
  methods: {
    indexBalls: function () {
      axios.get("http://localhost:3000/balls").then((response) => {
        console.log("index balls", response);
        this.balls = response.data;
      });
    },
    createNewBall: function () {
      axios.post("http://localhost:3000/balls", this.newBall).then((response) => {
        console.log("balls create", response);
        this.newBall = response.data;
        this.balls.push(this.newBall);
      });
    },
    showBall: function (ball) {
      this.currentBall = ball;
      document.querySelector("#ball-details").showModal();
    }
  },
};
</script>

<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <div v-for="ball in balls" v-bind:key="ball.id">
      <button v-on:click="showBall(ball)">More Information</button>
      <p>{{ ball.name }}</p>
    </div>
    <dialog id="ball-details">
      Ball info
      <p>Name: {{ currentBall.name }}</p>
      <p>Size: {{ currentBall.size }}</p>
      <p>Price: {{ currentBall.price }}</p>
      <button>Close</button>
    </dialog>
    <button v-on:click="createNewBall">Click to get more balls!</button>
    <p>
      Name:
      <input type="text" v-model="newBall.name" />
    </p>
    <p>
      Size:
      <input type="text" v-model="newBall.size" />
    </p>
    <p>
      Price:
      <input type="text" v-model="newBall.price" />
    </p>
  </div>
</template>
  
  <style></style>