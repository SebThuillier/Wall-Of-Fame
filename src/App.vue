<template>  
  <the-header></the-header>
  <the-nav @changeTab="changeTab"></the-nav>
  <div> {{ length }}</div>
  <div v-if="selected==1">
    <message v-for="mess in messages" :key="mess.id" :name="mess.name" :message="mess.message" :date="mess.date" :likes="mess.likes"></message>
  </div>
  <about-me v-if="selected==3"></about-me>
  <add-message v-if="selected==2"></add-message>
</template>

<script>


import TheHeader from "./components/TheHeader.vue";
import TheNav from "./components/TheNav.vue";
import AboutMe from "./components/AboutMe.vue";
import AddMessage from "./components/AddMessage.vue";
import Message from "./components/Message.vue";


import { wall } from "./agent"
import { ref, onMounted, defineComponent } from "vue"

export default defineComponent({
  name: 'App',
  components: {
    TheHeader,
    TheNav,
    AboutMe,
    AddMessage,
    Message,
  },
  data() {
    return {
      selected : 1
    }
  
  },
  setup:()=> {
    let messages = [];
    let length = ref(0);

    const refreshMessages = async () => {
      messages = await wall.showMessages();
      console.log(messages);
      console.log(messages.length);
      console.log(messages[1]);
      length.value = messages.length;

    }

    onMounted(refreshMessages)

    return {refreshMessages, messages, length}
  },
  methods: {
    changeTab(num) {
      this.selected = num;
    }
  }
})
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}


body {
  width: 70%;
}
</style>
