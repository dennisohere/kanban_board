import './bootstrap';
import VModal from 'vue-js-modal'
import Vue from 'vue';
import App from './components/App';

Vue.use(VModal);

new Vue({
    render: (h) => h(App),
}).$mount('#app');

