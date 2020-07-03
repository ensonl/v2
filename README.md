＃okteto重新启动
没有考虑到到新创建空间 fork的 修改okteto开发.yml最后一行成 echo y | okteto push

okteto开发.yml触发规则  点star 和UTC时间 22:10

参考 http://www.beijing-time.org/time15.asp

测试用开发环境部署v2ray

开发文档：https://okteto.com/docs/reference/development-environment

6.28 镜像被okteto禁用了

Error creating: admission webhook "pod.webhook.okteto.com" denied the request: your image does not adhere to our terms of service.

鉴于okteto会封镜像 已采用开发环境 自行构造v2ray docker

okteto开发.yml  待测试中

okteto.yml已停用


每天早上6.22自动执行重新部署

教程：https://704sjf.coding-pages.com/post/hello-gridea/


