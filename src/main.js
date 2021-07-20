import { createApp } from 'vue'
import App from './App.vue'
import TheNav from "./components/TheNav.vue"


/**
 * @dfinity/agent requires this. Can be removed once it's fixed
 */
window.global = window
const app = createApp(App);
app.component('TheNav', TheNav);
app.mount('#app');
