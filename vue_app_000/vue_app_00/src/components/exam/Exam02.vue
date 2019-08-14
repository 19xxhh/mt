<template>
    <div>
        <h1>Exam02.vue</h1>
        <mt-field label="用户名" placeholder="输入用户名" v-model="uname"  ></mt-field>
        <!-- 练习：表单验证 -->
        <!-- 1为表单添加密码输入框 -->
        <mt-field label="密码" placeholder="输入密码" v-model="upwd" type="password" ></mt-field>
        <!-- 2为表单添加年龄输入框 -->
        <mt-field label="年龄" placeholder="请输入年龄" v-model="uage" type="number"></mt-field>
        <!-- 2为表单添加注册按钮 -->
        <mt-button size="large" @click="reg">用户注册</mt-button>
        <!-- 2用户点击注册按钮完成表单验证 -->
        <!-- 用户名3-8位  字母数字 密码验证相同  年龄2位数字 -->
        <!-- 若输入有误提示：**输入有误 -->
    </div>
</template>
<script>
export default {
    data(){
        return{
            // 双向绑定的用户名密码年龄
            uname:"",//初始化数据
            upwd:"",
            uage:"",
        }
    },
    methods:{
        reg(){
            // 功能：对表单中的每个元素进行验证
            // 1 创建用户名密码所需的正则表达式
            var ureg=/\^[a-z0-9]{3,8}$/i;
            // 2 创建年龄的正则表达式
            var areg=/\^[0-9]{2}$/;
            // 3获取用户名
            var u=this.uname;
            // 4获取密码
            var p=this.upwd;
            // 5获取年龄
            var a=this.uage;
            // 6通过正则表达式验证用户名
            if(!(ureg.test(u))){
            // 7出错显示交互提示消息
                this.$messagebox("消息","用户名格式不正确");
              return;
             }else if(!(ureg.test(p))){
                 this.$messagebox("密码","密码格式不正确");
             }else if(!(areg.test(a))){
                 this.$messagebox("年龄","年龄格式不正确");
             }
        }
    },
}
</script>
<style>

</style>


