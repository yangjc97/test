---
layout: post
title: "本博客已开启安全(https)浏览"
date: 2016-05-28 20:05:01
category: web
tags: [博客, https, SSL]
---
前几天看到一位博友推荐[沃通数据免费SSL证书](https://buy.wosign.com/free/?lan=cn)，有2年免费试用期限。于是申请了一份，给放在[班瓦工](https://bwh1.net/aff.php?aff=16961)VPS上的博客添上。  <!-- more -->

申请过程很简单，按网站指引操作即可，最后会获得一个含有SSL证书及密钥的压缩文件。里面有Apache, Nginx等服务器对应的证书(.crt)和密钥(.key)文件。  

我的博客是Nginx服务器驱动的，将文件上传服务器后，修改/etc/nginx/nginx.conf，配置博客的server：

```
server {
	listen 80; 
	listen 443;
	server_name www.panxw.com; 
	ssl on; 
	ssl_certificate /var/www/server.crt; 
	ssl_certificate_key /var/www/server.key;
	add_header Strict-Transport-Security "max-age=63072000; includeSubdomains; preload";

	locatin / {
	}
	if ( $scheme = http ) {
		rewrite ^/(.*) https://$server_name/$1 permanent;}
	}
}
```

然后保存，重启Nginx服务器：

```
/etc/init.d/nginx restart
```

再次打开博客[http://www.panxw.com](http://www.panxw.com)，浏览器链接自动跳转到了[https://www.panxw.com](https://www.panxw.com)。

至此，本博客的安全浏览开启成功！  
