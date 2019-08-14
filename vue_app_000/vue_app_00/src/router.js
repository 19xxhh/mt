import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
// import Home from "./components/weixin/Home.vue"
// 为Exam01.vue组件指定访问路径
// 1在router.js引入组件

import Login from "./components/mt/Login.vue"
import Header from "./components/message/common/Header.vue"
import Station from "./components/message/common/Station.vue"

// 2为组件指定访问路径/Exam01


Vue.use(Router)
export default new Router({
  routes: [
    // {path:'/Home',component:Home},
    {path:'/',component:HelloContainer},
    
    {path:'/Login',component:Login},
    {path:'/Header',component:Header},
    {path:'/Station',component:Station},
  ]
})
