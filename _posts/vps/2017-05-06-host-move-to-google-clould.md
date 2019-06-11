---
layout: post
title: "站点服务迁移到了Google Cloud"
date: 2017-05-06 20:05:01
category: "vps"
tags: [google, cloud]
---
前几天上网无意看到Google Cloud有开通账号赠送300美元(一年使用期限)的活动。这阵子SSH连接班瓦工机子很卡，令人心烦，打算抽空试试Google Cloud。今天周末宅在家正好有空，就将班瓦工上的服务做个整体迁移，包括一个ss VPN服务和目前这个网页访问服务。 <!-- more -->

目前我在Google Cloud上启动了一个VM实例，Google湾湾数据中心，3.75G运行内存，10G存储空间，1个公网IP，这个配置大概可以把300美元在1年花掉！我使用了Debian Linux操作系统，在上面开启了一个ss VPN服务，及一个Nginx网页访问服务。

迁移完成后，我用ss连接上试用一下，爬墙速度还不错；用在线ping工具（http://ping.chinaz.com）对www.panxw.com进行了ping，测试结果还不错。不知博友们打开这个站点时速度如何，方便的话留言告诉我一下，谢谢！

Google Cloud新开通活动介绍：开通送300美元（365天使用期限），开通时需要提供信用卡扣1美元。当赠送的费用使用完，除非升级为付费账户，不会产生自动扣费。 地址：https://cloud.google.com/  