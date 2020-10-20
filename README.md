# ddz_skynet_demo
一个斗地主的demo

### 搭建步骤记录

#### 安装skynet 环境

1. clone skynet

git clone https://github.com/cloudwu/skynet

2. 编译

参考: https://github.com/cloudwu/skynet/wiki/Build

#### 编译好了git提交出现的问题

在本项目下clone 了skynet项目，导致本项目下的git 不识别skynet目录。

解决方案：git rm --cached skynet
