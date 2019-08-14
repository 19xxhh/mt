<template>
    <div id="header">
        <img src="../../../assets/c6314c2340ec81fedd208ef85816cc88.jpg" alt="">
        <ul>
            <li>首页</li>
            <li>入住加盟</li>
            <li>开放平台</li>
            <li>社会责任</li>
            <li>点外卖</li>
            <li>下载手机版</li>
        </ul>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
    #header{
        background-image:url("../../../assets/head.png");
        background-size:cover;
        width:100%;height:500px;
        position:fixed;
    }
    #header img{
        width:100px;
        margin:30px 0 0 50px;
    }
    ul{
        display:flex;
        position:absolute;
        top:10%;left:60%;
    }
    ul li{
        list-style: none;
        color:#fff;
        margin:5px;
    }
</style>