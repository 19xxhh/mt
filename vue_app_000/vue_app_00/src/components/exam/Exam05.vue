<template>
    <div>
        <h1>面板组件</h1>
        <mt-button data-id="tab1" @click="handle1">美食</mt-button>
        <mt-button data-id="tab2" @click="handle2">购物</mt-button>
        <mt-button data-id="tab3" @click="handle3">休闲</mt-button>
        <div>
            <mt-tab-container v-model="active">
                <mt-tab-container-item id="tab1">美食面板</mt-tab-container-item>
                <mt-tab-container-item id="tab2">购物面板</mt-tab-container-item>
                <mt-tab-container-item id="tab3">休闲面板</mt-tab-container-item>
            </mt-tab-container>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            active:"tab2",  //保存显示的子面版的id
        }
    },
    methods:{  
        handle1(e){
            // 在事件处理函数中获得自定义属性
            // 添加e事件对象，获取e.target属性，触发事件对象
            // e.target.dataset 所有自定义 属性都保存在dataset属性中
            // console.log(e.target.dataset);
            var id=e.target.dataset.id;
            this.active=id;
            }, 
        handle2(e){ var id=e.target.dataset.id;
            this.active=id;},
        handle3(e){ var id=e.target.dataset.id;
            this.active=id;},
    },
}
</script>
<style>

</style>
