<template>
    <div>
        <h1>面板组件</h1>
        <mt-tab-container v-model="active">
            <mt-tab-container-item id="tab1">子面板1</mt-tab-container-item>
            <mt-tab-container-item id="tab2">子面板2</mt-tab-container-item>
            <mt-tab-container-item id="tab3">子面板3</mt-tab-container-item>
        </mt-tab-container>
    </div>
</template>
<script>
export default {
    data(){
        return{
            active:"tab2",  //保存显示的子面版的id
        }
    },
}
</script>
<style>

</style>
