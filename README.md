使用 OpenWrt ImageBuilder 快速构建可定制化的 OpenWrt 固件。



### 本项目特点

* 使用 ImageBuilder 构建固件，省时省力，构建一次最多只需要不到半个小时。
* 内置了(我自己)日常会用到的 Luci 软件包，更换了 Argon 主题，几乎开箱即用。
* 内置了最新版本的 Clash 内核，无需自己下载。
* 只需简单修改 build.sh 即可二次构建属于你自己的固件，方便定制。

登录密码：root / password


### 食用方法

如果你想添加或删除其他内置组件，只需 Fork 本仓库，修改 build.sh 然后进入 Actions 编译即可。如果想添加自定义的 ipk 包，则需要把 ipk 包的下载链接添加到 external-package-urls.txt 中，同时也需要在 build.sh 中添加对应的包名。
