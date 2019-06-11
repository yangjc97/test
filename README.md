个人博客模板--基于Jekyll+Github构建。
================

#### 博客地址
http://www.panxw.com, 支持PC与智能机访问。  

#### 前期准备
1.安装ruby环境。  
2.安装bundler工具。(gem install bundler)。  

#### 使用本项目作为博客模板，操作步骤：
1,首先Fork或Download本项目代码，进入根目录执行bundle install。  
2,修改BLOGSYS/_config.yaml及BLOGSYS/about.md文件，配置站点、栏目及个人信息。  
3,修改BLOGSYS/_include目录下相关文件，以配置网站统计(analytics.html)，网友评论(comment.html)，右侧栏目(categories.html)等。  
4,修改BLOGSYS/CNAME及BLOGSYS/robots.txt文件，以绑定自己的域名。  
5,删除BLOGSYS/_posts目录下所有文件，添加自己的栏目及文章。  
6,BLOGSYS目录下执行bundler exec jekyll serve  
7.浏览效果: http://localhost:4000  
8,将_site目录下所有文件复制到根目录。  
9,正常流程提交代码。  

#### 本项目使用了
1,CNZZ的网站统计服务，官网：http://cnzz.com  
2,来必力的网友评论服务，官网：https://www.livere.com  
3,Google 的Adsense广告，官网：https://www.google.com/adsense/login/zh_CN  
如需查看或管理网站统计、评论或广告，请自行注册帐号，然后修改_includes目录下相关文件。  

#### 联系作者
QQ：85902258  
邮箱：email(winfirm#163.com)  
Github：https://github.com/panxw  

**^_^*随喜Star一下本项目吧，谢谢~  
