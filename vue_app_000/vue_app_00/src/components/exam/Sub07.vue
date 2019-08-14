<template>
    <div>
        <!-- 子组件，功能是显示msg数据 -->
        <!-- msg是父组件传递来的数据 -->
        <!-- 子组件不需要配置访问路径 -->
        <h1>{{msg}}</h1>
    </div>
</template>
<script>
export default {
   props:{  //声明接收父组件数据
       msg:{default:""} //消息数据
   }
}
</script>
<style>

</style>
