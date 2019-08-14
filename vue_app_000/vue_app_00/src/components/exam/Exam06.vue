<template>
    <div>
        <h1>面板</h1>
        <mt-tab-container v-model="active">
            <mt-tab-container-item id="index">
                首页
            </mt-tab-container-item>
            <mt-tab-container-item id="shoppingcar">
                购物车
            </mt-tab-container-item>
            <mt-tab-container-item id="food">
                美食
            </mt-tab-container-item>
        </mt-tab-container>
        <h1>底部导航条</h1>
        <mt-tabbar v-model="active" fixed>
            <mt-tab-item id="index">
                <img slot="icon" src="../../assets/index.png" alt="">首页
            </mt-tab-item>
            <mt-tab-item id="shoppingcar">
                <img slot="icon" src="../../assets/shoppingcar.png" alt="">购物车
            </mt-tab-item>
            <mt-tab-item id="food">
                <img slot="icon" src="../../assets/food.png" alt="">美食
            </mt-tab-item>
        </mt-tabbar>
    </div>
</template>
<script>
export default {
    data(){
        return{
            active:"index"
        }
    }
}
</script>
<style>

</style>
