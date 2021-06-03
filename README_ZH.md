# 关于 ProxyAdmin 集群版
ProxyAdmin 集群版，是强大的代理服务工具 [snail007/goproxy](https://github.com/snail007/goproxy) 的控制面板，运行了它，一秒让你拥有控制海量机器上的proxy服务，友好的交互界面，小白也能轻松上手，让你用起来得心应手，心情舒畅。

此面板是收费使用，请购买后激活使用。

首次使用，直接在命令行执行proxy-admin，等待程序自己退出，会在下面的目录生成id.txt文件，把里面的内容绑定到授权平台即可。   
Windows：C:\gpa\id.txt  
Linux & MacOS : /etc/gpa/id.txt  

购买方式：
  
1. 授权平台可以在线自助购买，点击进入[授权平台](https://gpm.host900.com/)。

2. 特殊需求请发送邮件到：`arraykeys@gmail.com`  

<hr>

[Manual](https://snail.gitee.io/proxy/manual/#/?id=_11-cluster) ｜ [中文简介](/README_ZH.md)｜ [参考手册](https://snail.gitee.io/proxy/manual/zh/#/?id=_11%e9%9b%86%e7%be%a4%e7%ae%a1%e7%90%86)

手册同时适用于命令行goproxy和proxyadmin面板，控制面板只是命令行goproxy的界面化，使用参数完全一样。

## 国内下载

请在github的下载链接前面加上: `https://mirrors.host900.com/` 。

比如`v1.4`的github下载链接是：

`https://github.com/snail007/proxy-admin-cluster/releases/download/v1.4/proxy-admin_linux-amd64.tar.gz`

那么国内下载地址就是：

`https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/releases/download/v1.4/proxy-admin_linux-amd64.tar.gz`

此地址也适用于wget，curl直接命令行下载。


## 加入我们

欢迎加官方群交流，QQ群：`189618940` [电报群](https://t.me/snail007_goproxy)

## 预览

### 概况
![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/cluster1.png)  

### 机器组管理
![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/cluster2.png)  

### 服务管理
![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/cluster3.png)  

### 节点管理
状态解释：  
在线：该组的所有服务在该节点上运行正常。  
异常：该组的服务在该节点上运行有失败的，可以点击“异常”查看具体什么服务运行失败和失败信息。  
离线：节点不在线，或者节点无法和控制面板通讯。  
![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/cluster4.png)  
![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/cluster5.png)  
![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/cluster6.png)  

## 开始使用

### 视频安装教程

[点击观看安装视频](https://space.bilibili.com/472844633/channel/detail?cid=88254)

### 快速安装

如果你的VPS是 linux 64位的系统，那么只需要执行下面一句，就可以完成自动安装和配置.

提示:所有操作需要root权限。 

```shell  
curl -L https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/install_auto.sh | bash  
```  

安装完成，配置目录是/etc/gpa，更详细的使用方法请参考上面的手册目录，进一步了解你想要使用的功能。 
 
如果安装失败或者你的vps不是linux64位系统，请按照下面的手动安装步骤安装。 
  
### 手动安装  

选择适合你的系统的文件并下载，[点击进入下载](https://github.com/snail007/proxy-admin-cluster/releases)

国内请参考上面的国内下载。

### Linux && MacOS

root账号执行：

`cd 进入“有proxy-admin的目录”`

`./proxy-admin install`


### Windows

1. 使用助手工具安装

管理员打开 goproxy_helper.exe，可以一键安装/卸载/重启服务。

![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/gh.png)

2. 命令行安装

管理员账号执行cmd.exe

`cd 进入“有proxy-admin的目录”`

`proxy-admin.exe install`

### 访问

安装成功后，打开浏览器访问：http://127.0.0.1:32080 , 首次默认账号是root，密码是123，登录后记得第一时间修改。

配置文件路径：

Linux && MacOS 位于 /etc/gpa/app.toml

Windows 位于 C:\gpa\app.toml

可以配置监听的端口和日志记录。

## 卸载服务

### Linux && MacOS

root账号执行：

`cd 进入“有proxy-admin的目录”`

`./proxy-admin uninstall`


### Windows

管理员账号执行cmd.exe

`cd 进入“有proxy-admin的目录”`

`proxy-admin.exe uninstall`

## 服务管理

下面的操作必须是已经安装了服务才能使用。

管理服务有两种方式：

1.使用程序 proxy-admin 可以管理服务。

proxy-admin install    安装为系统服务

proxy-admin uninstall  卸载服务

proxy-admin start      启动服务

proxy-admin stop       停止服务

proxy-admin restart    重启服务

2.使用系统服务管理工具管理。

proxy-admin 系统服务名称是：proxyadmin

Linux下面可以通过systemctl管理。

MacOS下面可以通过命令管理。

Windows下面可以使用系统的服务管理器管理。

## 升级更新

### Linux
用`root`打开一个终端。

```shell
proxy-admin update
```

已经安装了最新的版本，默认不会更新，如果想强制更新加上 -f 参数即可。

```shell
proxy-admin update -f
```

### Windows
用`管理员`权限打开命令提示符窗口。

```bat
c:\
cd gpa
proxy-admin update
```

已经安装了最新的版本，默认不会更新，如果想强制更新加上 -f 参数即可。

```shell
c:\
cd gpa
proxy-admin update -f
```

## 鸣谢

[笔下光年](https://gitee.com/yinqi) 提供的后台模板给我们带来舒畅的交互体验.
