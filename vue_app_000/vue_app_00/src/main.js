import Vue from 'vue'
import App from './App.vue'
import router from './router'

// 引入第三方的组件库mintui
// 1完整引入mintUI组件库中的所有组件
import MintUI from "mint-ui"
// 2单独引入mint-ui组件库中的样式文件
import "mint-ui/lib/style.css"
// 3将mint-ui注册到vue实例中
Vue.use(MintUI)
//4 将字体图标引入到当前项目中
import "./font/iconfont.css"



// 引入第三方axios模块
import axios from "axios"
// 配置基础路径
axios.defaults.baseURL="http://127.0.0.1:3000/"
// 配置保存session信息
axios.defaults.withCredentials=true
// 将axios注册到vue实例中
Vue.prototype.axios=axios
// 由于axios不支持使用use将实例添加到vue原型


Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
