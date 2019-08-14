<template>
    <div>
        <h1>父组件</h1>
        <!-- 父组件调用 子组件并且传递参数 -->
        <!-- 引入子组件 -->
        <!-- 注册子组件 -->
        <!-- 调用子组件 -->
        <!-- 为父组件指定一个访问路径 -->
        <add msg="微信"></add>
    </div>
</template>
<script>
// 引入子组件
 import Sub07 from "./Sub07.vue";
export default {
    data(){
        return{ }
    },
    components:{"add":Sub07}
    
 }

</script>
<style>

</style>
