# About ProxyAdmin Cluster Edition
ProxyAdmin cluster version, is a powerful proxy service tool [snail007/goproxy](https://github.com/snail007/goproxy) control panel, run it, one second let you have a proxy service to control massive machines, friendly The interactive interface, Newbie can also easily get started, so that you can use it handy and feel comfortable.

This panel is used for a fee, please contact the official telegram group for purchase: [join](https://t.me/snail007_goproxy)  

For the first use, the id.txt file will be generated in the following directory, and the content inside can be bound to the authorized platform.  
Windows: C: \ gpa \ id.txt  
Linux & MacOS: /etc/gpa/id.txt  

<hr>

[Manual](https://snail.gitee.io/proxy/manual/#/?id=_11-cluster) ｜ [中文简介](/README_ZH.md)｜ [参考手册](https://snail.gitee.io/proxy/manual/zh/#/?id=_11%e9%9b%86%e7%be%a4%e7%ae%a1%e7%90%86)

## Preview

### Dashboard  

![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/cluster1.png)  

### Nodes Group Management  

![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/cluster2.png)  

### Services Management  

![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/cluster3.png)  

### Nodes Management  

State explanation:  
online: All services of this group are running normally on this node.  
exception: All the services of this group are running abnormally on this node. You can click "Abnormal" to view the specific service failure and failure information.    
offline: The node is not online, or the node cannot communicate with the control panel.  

![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/cluster4.png)   
![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/cluster5.png)   
![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/cluster6.png)   


## Start Using

### Quick Installation

If your VPS is a Linux 64-bit system, you only need to execute the following sentence to complete the automatic installation and configuration.

Tip: All operations require root privileges.

```shell
curl -L https://mirrors.host900.com/https://raw.githubusercontent.com/snail007/proxy-admin-cluster/master/install_auto.sh | bash
```

The installation is complete, the configuration directory is /etc/gpa. For more detailed usage, please refer to the manual directory above to learn more about the features you want to use.

If the installation fails or your vps is not a linux64-bit system, follow the manual installation steps below.
  
### Manual Installation

Select the file that is appropriate for your system and download it, [click to download](https://github.com/snail007/proxy-admin-cluster/releases)

### Linux && MacOS

The root account is executed:

`cd Enter "proxy-admin directory".

`./proxy-admin install`


### Windows

1. Install using the assistant tool

The administrator opens goproxy_helper.exe and can install/uninstall/restart the service with one click.

![](https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/blob/master/res/images/gh.png)

2. Command line installation

The administrator account executes cmd.exe

`cd Enter "proxy-admin directory".

`proxy-admin.exe install`

### Access

After the installation is successful, open the browser to access: http://127.0.0.1:32080, the first default account is root, the password is 123, remember to modify the first time after login.

Configuration file path:

Linux && MacOS is located in /etc/gpa/app.toml

Windows is located at C:\gpa\app.toml

You can configure the listening port and logging.

## Uninstalling services

### Linux && MacOS

The root account is executed:

`cd Enter "proxy-admin directory".

`./proxy-admin uninstall`


### Windows

The administrator account executes cmd.exe

`cd Enter "proxy-admin directory".

`proxy-admin.exe uninstall`

## Service Management

The following operations must be done before the service is installed.

There are two ways to manage services:

1. Use the program proxy-admin to manage the service.

proxy-admin install install as system service

proxy-admin uninstall uninstall service

proxy-admin start

proxy-admin stop

proxy-admin restart

2. Manage using system service management tools.

The proxy-admin system service name is: proxyadmin

Linux can be managed by systemctl.

MacOS can be managed by commands below.

Windows can be managed using the system's Service Manager.

## Thanks

[Back to the light](https://gitee.com/yinqi) The back-end template provided us a comfortable interactive experience.
