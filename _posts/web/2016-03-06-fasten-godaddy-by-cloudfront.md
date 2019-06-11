---
layout: post
title: "利用CloudFront为Godaddy主机上的网站加速"
date: 2016-03-06 20:05:01
category: web
tags: [CloudFront, Godaddy]
---
最近将博客放Godaddy主机上来了，然而国内用户访问时却超级慢。慢到什么程度？打开一个简单的html静态页面可能要3-5s，甚至时常出现请求超时的现象。通过http://ping.chinaz.com测试发现，各地的ping值大多在400ms以上，并且每次都会出现一批超时节点，放眼望去基本全是红的！  <!-- more -->

面对Godaddy主机访问慢的问题，大家首先可能想到利用CDN来提速。然而提供CDN加速服务的国内服务商，都无一例外要求域名有备案，否则顶多也就让你使用海外加速节点，经实际体验实际效果并不理想。对于放在Godaddy主机上的站来说，没有备案这一说，Godaddy根本就不会有这种服务。后来想到了去年使用过一段时间的AWS，记得上面有内容分发的服务。于是找到了AWS的CloudFront，了解其使用方法与计价规则之后，趁去年申请的一年免费体验服务还没到期赶紧试一把。  

给网站添加CloudFront内容分发的配置过程并不复杂，但有个技巧，举例说明，比如我准备给我的个人博客作分发，公开访问地址是www.panxw.com，那么要这样操作：  
1.Godaddy上添加blogserver.panxw.com的附加域，将博客部署在这个目录下。修改panxw.com域名解析，将blogserver的A记录指向Godaddy虚拟主机IP。  
2.在AWS的CloudFront面板下新建分发（Create Distribution)，将Origin的值设置为blogserver.panxw.com，CNAMEs的值设置为博客的公开地址，即www.panxw.com。  
3.Distribution新建完成后会生成一个诸如xxxxx.cloudfront.net的Domain Name。修改panxw.com域名解析，添加一条CNAME www，将其值设置为xxxxx.cloudfront.net。  
这样一来当访问www.panxw.com时，实际是到xxxxx.cloudfront.net地址来取内容，而CloudFront则从blogserver.panxw.com处将最原始内容缓存到xxxxx.cloudfront.net处来。  

待Distribution状态变为Deployed后，就可以通过www.panxw.com来检验实际加速效果了。经实验发现，再次ping值大多在200ms以内，访问页面时加载速度明显提升。结论是：CloudFront的内容分发服务，有效地提升部署在Godaddy主机上网站的用户访问体验，值得一试！  
