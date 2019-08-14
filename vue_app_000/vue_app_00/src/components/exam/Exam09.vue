<template>
    <div>
        <mt-tabbar v-model="active" fixed>
            <mt-tab-item id="index" @click="handel1">
                <img slot="icon" src="../../assets/ic_weixin_normal.png" alt="">微信
            </mt-tab-item>
           <mt-tab-item id="call" @click="handel2">
                <img slot="icon" src="../../assets/ic_contacts_normal.png" alt="">通讯录
            </mt-tab-item>
            <mt-tab-item id="found" @click="handel3">
                <img slot="icon" src="../../assets/ic_find_normal.png" alt="">发现
            </mt-tab-item>
            <mt-tab-item id="myself" @click="handel4">
                <img slot="icon" src="../../assets/ic_me_normal.png" alt="">我
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
    },
    method:{
        handel1(){

        }
    }
 
}
</script>
<style>

</style>
