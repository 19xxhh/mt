<template>
    <div>
        <mt-field label="账号登录" :placeholder="unameholder" v-model="uname" ></mt-field>
        <mt-field label="密码" :placeholder="upwdholder" v-model="upwd" type="passward">
            <mt-button>获取手机动态码</mt-button>
        </mt-field>
        <mt-button @click="login">登录</mt-button>
    </div>
</template>
<script>
export default {
    data(){
        return{
            uname:"",
            upwd:"",
            unameholder:"请输入手机号，未注册将自动注册",
            upwdholder:"动态码"
        }
    },
    methods:{
        login(){
            // 获取用户名密码
            var uname=this.uname;
            var upwd=this.upwd;
            // 验证用户名密码
            var reg=/^[a-z0-9]{6,8}$/i
            if(!test.reg(uname)){
                this.$messagebox({"消息":"用户名格式输入错误"})
            }
            if(!test.reg(upwd)){
                this.messagebox({"消息":"密码格式输入错误"})
            }
        },
    }
}
</script>
<style>

</style>
