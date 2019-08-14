<!-- template组件模板：保存标签-->
<template>
<!-- template模板标签，必须有一个跟标签-->
    <div>
        <h1>Exam01.vue</h1>
        <!--添加一个按钮，当用户点击按钮时，显示消息提示框-->
        <button @click="openToast">显示消息</button>
        <hr>
        <!-- 创建3个按钮，显示交互组件 -->
        <button @click="openAlert">简写的提示框</button>
        <hr>
        <button @click="openConfirm">确认提示框</button>
        <hr>
        <button @click="openPrompt">输入确认</button>

    </div>
</template>
<script>
// vue组件：导出默认对象
export default {
    data(){ //当前组件共享数据，模块直接读取
    return{}  //默认返回空对象（没数据）

    },
    methods:{
        openPrompt(){
            this.$messagebox.prompt("请输入年龄")
            .then((value)=>{
                console.log(value);
            }).catch(err=>{
                console.log(err)
            });
        },
        openConfirm(){
            //功能：显示一个确认的消息框
            this.$messagebox.confirm("是否删除指定的数据")
            .then(action=>{//用户选择了确认的回调函数
                console.log("确认");
            })
            .catch(action=>{
                console.log("取消")
            })
            
        },
        openAlert(){
            // 标准方式显示提示框
            // this.$messagebox({
            //     title:"消息",
            //     message:"执行成功"
            // })

            // 简写
            this.$messagebox("简写","执行成功")
        },
        openToast(){
            // 功能：此函数显示完成mint-ui消息提示框
            this.$toast({
                message:"操作成功",
                duration:"1000",
                position:"top",
                // 使用字体名称       图标名称
                iconClass:"iconfont icon-icon-test"
            });
            console.log(this);
        }
    },
}

</script>
<style>
/* 当前组件专有的样式 */
</style>


