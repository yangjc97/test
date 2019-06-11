个人博客模板
================
基于Jekyll+Github构建，支持PC与智能机访问。   
特有功能：支持按栏目及标签的列表显示，栏目可分页显示。  
博客地址：[http://www.panxw.com](http://www.panxw.com)  
[项目代码](https://github.com/panxw/panxw.github.com)

## 1.环境准备
1.安装ruby环境。  
2.安装bundler工具。(gem install bundler)。  

## 2.使用本项目作为博客模板，操作步骤
1,下载本项目代码，解压后放入博客项目根目录，然后cmd进入BLOGSYS目录，执行bundle install。  
2,修改BLOGSYS/_config.yaml及BLOGSYS/about.md文件，以配置站点、栏目及个人信息。  
3,修改BLOGSYS/_include目录下相关文件，以配置网站统计(analytics.html)，网友评论(comment.html)，右侧栏目(categories.html)等。  
4,修改BLOGSYS/CNAME及BLOGSYS/robots.txt文件，以绑定自己的域名。  
5,删除BLOGSYS/_posts目录下所有文件，添加自己的栏目及文章。  
6,BLOGSYS目录下执行bundler exec jekyll serve  
7.查看运行效果: http://localhost:4000  
8,将_site目录下所有文件复制到根目录。  
9,正常流程提交代码到Github。  
10.查看实际效果。  

## 3.本项目使用了
1,CNZZ的网站统计服务，官网：http://cnzz.com  
2,来必力的网友评论服务，官网：https://www.livere.com  
3,Google 的Adsense广告，官网：https://www.google.com/adsense/login/zh_CN  
如需查看或管理网站统计、评论或广告，请自行注册帐号，然后修改_includes目录下相关文件。  

## 4.联系交流
作者QQ：85902258  
邮箱：email(winfirm#qq.com)  
QQ交流群: 168563980   

## 5.赞助(请作者喝瓶农夫山泉*^_^*)  
支付宝:  
<img width="200" height="200" src="https://www.panxw.com/images/donate_alipay.jpg"/>  
微信:  
<img width="200" height="200" src="https://www.panxw.com/images/donate_weixin.jpg"/>

## License

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

