<template>
    <div id="introduce">
        <h1 class="service">SERVICE</h1>
        <div class="service-border"></div>
        <h1 class="fwjs">服务介绍</h1>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
    #introduce{
    background:#fff;
    position:relative;
    }
    .service{
        opacity: 0.2;
        font:100px bold;
        text-align: center;
    }
    .service-border{
        border:3px solid orange;
        width:70px;height:80px;
        position:absolute;
        top:130px;left:47%;
        
    }
    .fwjs{
        text-align: center;
        margin-top:-55px;
    }
</style>