<template>
    <div id="station">
        <a href="" >
            <div class="left-text">
            <span class="iconfont"> &#xe63f;</span>
            <div class="left">我要入驻 &gt;</div>
            <p >商家、配送、城市代理、服务市场</p>
            </div>
        </a>
          <a href="" id="middle">
            <div class="left-text">
            <span class="iconfont font-middle">&#xe920;</span>
            <div class="left">开发者接入 &gt;</div>
            <p >外卖、餐饮开放平台</p>
            </div>
        </a>
          <a href="" id="right">
            <div class="left-text">
            <span class="iconfont">&#xe604;</span>
            <div class="left">我要点外卖 &gt;</div>
            <p >商快捷下单、一键点餐</p>
            </div>
        </a>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
#station{
    display:flex;
}
a{
    display:block;
    width:333px;height:174px;
    background-color:#658ff7;
    text-align:center;
    color:#fff;
    text-decoration: none;
    position:relative;
}
.iconfont{
    display:flex;
    position:absolute;
    left:10%;top:10%;
}
.left{
    background:url("https://waimai.meituan.com/static/img/new2018/third-right-arrow.png") norepeat right;
    font-size:28px;
}
.left-text{
    position:absolute;
    top:40%;left:15%;
}
#middle{
    background-color:#f54c45;
}
#right{
    background-color:#ffbd27;
}
.font-middle{
    position:absolute;
    top:;
}
</style>

#f54c45
#ffbd27