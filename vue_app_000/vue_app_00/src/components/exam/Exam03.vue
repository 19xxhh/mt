<template>
    <div>
        <h3>表单组件---开关</h3>
        <mt-switch v-model="val1" @change="handle1">开关组件</mt-switch>

        <h3>单选框列表</h3>
        <mt-radio title="单选框列表" v-model="val2" :options="['选项a','选项b','选项c']"></mt-radio>{{val2}}
        <mt-radio title="单选框列表" v-model="val3" :options="options" ></mt-radio>{{val3}}
        <mt-button @click="handle2">获取年龄</mt-button>


        <h1>复选框</h1>
        <mt-checklist v-model="val4" title="复选框" :options="['选项a','选项b','选项c']"></mt-checklist>
        <mt-button @click="handle3">获取复选框选中的内容</mt-button>
    </div>
</template>
<script>
export default {
    data(){
        return{
            val1:true,//val为true打开状态，false关闭
            val2:"",
            val3:"",
            options:[
                {label:"去年",value:"12"},
                {label:"今年",value:"13"},
                {label:"明年",value:"14"}
            ],
            val4:[],
        }
    },
    methods:{
        handle3(){
            console.log(this.val4)
        },
        handle2(){
            console.log(this.val3)
        },
        // 事件处理函数
        handle1(){
            console.log(123);
            // 获取状态
            console.log(this.val1)
        }
    },
}
</script>
<style>

</style>

