SET NAMES UTF8;
drop database if exists stamp_station;
create database stamp_station CHARSET=UTF8;

use stamp_station;

-- 邮票详情表
create table stamp_details(
 sid INT PRIMARY KEY AUTO_INCREMENT comment "邮票ID",
 stitle VARCHAR(128) comment "名称",
 snum VARCHAR(128) UNIQUE comment "邮票编号",
 nid INT comment "发行国家ID，关联表：nations",
 nname VARCHAR(128) comment "发行国家名称",
 sdate DATE comment "发行时间",
 price DECIMAL(7,2) comment "售价",
 imgurl VARCHAR(256) comment "图片地址",
 detials VARCHAR(256) comment "详细介绍", 
 kid VARCHAR(128) comment " 种类ID，关联表：kinds",
 kname VARCHAR(300) comment " 种类名称，关联表：kinds",
 subid INT comment " 专题ID，关联表：subjects",
 sub_name VARCHAR(300) comment " 专题名称，关联表：subjects",
);

-- 国家数据表
create table nations(
 nid INT PRIMARY KEY AUTO_INCREMENT comment "国家ID",
 nname VARCHAR(128) comment "国家名称",
 nareas VARCHAR(128) comment "所属地域：亚洲、欧洲、非洲、北美洲、大洋洲"
);
-- 专题数据表
create table subjects(
 subid INT PRIMARY KEY AUTO_INCREMENT comment "专题ID",
 sub_name VARCHAR(128) comment "专题名称",
 sub_cat VARCHAR(128) comment "所属类别，如：教育、人物、中国事物、文化艺术、体育" 
);
-- 邮票和专题关联表，邮票和专题是一对多的关系
create table stamp_sub_rela(
 relaid INT PRIMARY KEY AUTO_INCREMENT comment "关联ID", 
 sid INT comment "邮票ID，关联表：stamp_details",
 subid INT comment "专题ID，关联表：subjects"
);
-- 邮票种类数据表 
create table kinds(
 kid INT PRIMARY KEY AUTO_INCREMENT comment "专题ID",
 kname VARCHAR(128) comment "种类名称" 
);
-- 用户表
create table users(
 uid INT PRIMARY KEY AUTO_INCREMENT comment "用户ID",
 upwd VARCHAR(128) NOT NULL comment "密码",
 uname VARCHAR(128) comment "姓名",
 nickname VARCHAR(128) comment "昵称", 
 sex BOOL comment "性别：1-男，0-女 comment ",
 bitrh DATE comment "出生日期", 
 email VARCHAR(128) NOT NULL comment "邮箱", 
 tel INT comment "联系电话",
 id_card INT UNIQUE comment "身份证号码" 
);
-- 购物车
create table carts(
 cid INT PRIMARY KEY AUTO_INCREMENT comment "购物车ID",
 uid INT comment "用户ID",
 sid INT comment "商品ID",
 stitle VARCHAR(128) comment "商品名称",
 price DECIMAL(7,2) comment "商品价格",
 counts INT comment "数量",
 imgurl VARCHAR(256) comment "图片地址" 
);
-- 订单明细
create table order_details(
 oid INT PRIMARY KEY AUTO_INCREMENT comment "订单车ID",
 uid INT comment "用户ID",
 sid INT comment "商品ID",
 stitle VARCHAR(128) comment "商品名称",
 price DECIMAL comment "商品价格",
 counts INT comment "数量",
 amoun DECIMAL(7,2) comment "总价",
 status INT comment "订单状态：0-未支付，1-已支付，2-作废，3-退款"
);

