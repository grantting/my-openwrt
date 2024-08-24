使用 OpenWrt ImageBuilder 快速构建可定制化的 OpenWrt 固件。

### 步骤

1. <a herf="https://grantting.github.io/my-openwrt/">点击</a>选择对应路由器
2. 粘贴到action中

登录密码：root / password

### 食用方法

如果你想添加或删除其他内置组件，只需 Fork 本仓库，修改 build.sh 然后进入 Actions 编译即可。如果想添加自定义的 ipk 包，则需要把 ipk 包的下载链接添加到 external-package-urls.txt 中，同时也需要在 build.sh 中添加对应的包名。
