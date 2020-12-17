[TOC]
#### 开发环境配置 
+ 打开终端[终端](https://support.apple.com/zh-cn/guide/terminal/apd5265185d-f365-44cb-8b09-71a064a42125/mac)
+ 安装 brew (官网)[https://brew.sh/] 
> 找其他方式安装brew[访问连接](https://zhuanlan.zhihu.com/p/90508170)
+ Z shell 安装 https://blog.csdn.net/QCZTZSWT357/article/details/98951152
+ git安装 在终端输入 ` brew install git` 
> 配置git 
```git 
git config --global user.name "your_name"
git config --global user.email "your_email@gmail.com" //公司邮箱
```
> 发送publickey 
  1. 终端输入 cd $HOME
  2. 输入命名 cat .ssh/id_rsa.pub 
  3. 复制打印出来的发给管理员
+ mysql 安装  
> `brew install mysql@5.7` 

#### 下载开发软件
+  登录服务器 ssh aws@172.16.11.112
+  文件目录展示![文件目录](http://aws-staging.yimei180.com/portal/%E4%B8%8B%E8%BD%BD%E7%9B%AE%E5%BD%95%E5%B1%95%E7%A4%BA.jpg)
+  jdk 下载       ` scp  aws@172.16.11.112:soft/mac常用软件/jdk-8u261-macosx-x64.dmg .` 
+  jetbrains-toolbox 下载 `scp aws@172.16.11.112:soft/mac常用软件/jetbrains-toolbox-1.17.7391.dmg .` 
>  1. java  IDE：IntelliJ IDEA <br> 
>  2. mysql IDE：Datagrip   <br>
>  3. 前端  IDE：webStrom  <br>
#### 从下载平台
+ 终端输入 cd $HOME
+ `scp aws@172.16.11.112:soft/OA项目组/opt.zip .`
+ `scp aws@172.16.11.112:soft/OA项目组/base.sql .`

