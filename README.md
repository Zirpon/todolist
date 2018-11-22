# todolist

> technic

`today`

timeline | course |
:-------:|:-----: |
07:00 ~ 08:00 | |
08:00 ~ 09:00 | |
09:00 ~ 09:30 | on work |
09:30 ~ 10:00 | |
10:00 ~ 10:45 | dispatch |
10:45 ~ 11:00 | order delivery |
11:00 ~ 11:50 | dispatch |
11:50 ~ 12:00 | delivery pickup |
12:00 ~ 12:30 | delivery pickup |
12:30 ~ 13:00 | TCP/IP 一二章 |
13:00 ~ 13:50 | nap |
13:50 ~ 14:00 | |
14:00 ~ 14:45 | dispatch |
14:45 ~ 15:00 | dispatch |
15:00 ~ 15:45 | dispatch |
15:45 ~ 16:00 | dispatch |
16:45 ~ 17:45 | dispatch |
17:45 ~ 18:00 | dispatch |
18:00 ~ 18:30 | dispatch |
18:30 ~ 19:00 | sport |
19:00 ~ 19:30 | bash dinner |
19:30 ~ 20:00 | dispatch |
20:00 ~ 21:00 | dispatch |
21:00 ~ 21:30 | dispatch |
21:30 ~ 22:00 | dispatch |
22:00 ~ 23:00 | |
23:00 ~ 23:30 | |

六个部位 10阶 升阶 填满部位 + 特殊条件

每个部位 6个凹槽 增加属性

凹槽 物品填满 增加属性

---

我真的佛了 今天装个mysql 8.0 各种坑 好像不支持 设置set password= password("123456") 这样的写法 各种报错
要

```mysql
mysql> alter user 'root'@'localhost'IDENTIFIED BY 'MyNewPass';

ERROR 1819 (HY000): Your password does notsatisfy the current policy requirements

mysql> alter user 'root'@'localhost'IDENTIFIED BY 'MyNewPass@123';

ERROR 1396 (HY000): Operation ALTER USERfailed for 'root'@'localhost'

mysql> alter user'root'@'%' IDENTIFIED BY 'MyNewPass@123';
```

还有他的密码[安全策略](https://blog.csdn.net/hellosunqi/article/details/70941754)

```mysql
mysql> GRANT REPLICATION CLIENT ON *.*TO 'zabbix'@'%' IDENTIFIED BY ‘xxxxxxxx’;

ERROR 1819 (HY000): Your password does notsatisfy the current policy requirements
```

这个与validate_password_policy的值有关。

validate_password_policy有以下取值：
0 or LOW
Length
1 or MEDIUM
Length; numeric, lowercase/uppercase, and special characters
2 or STRONG
Length; numeric, lowercase/uppercase, and special characters; dictionary file

```mysql
mysql> set global validate_password_length=0；
Query OK, 0 rows affected (0.00 sec)

mysql> SHOW VARIABLES LIKE 'validate_password%';
+--------------------------------------+-------+
| Variable_name                       | Value |
+--------------------------------------+-------+
| validate_password_dictionary_file    |       |
| validate_password_length             | 4    |
| validate_password_mixed_case_count   | 1     |
| validate_password_number_count       | 1     |
| validate_password_policy             | LOW  |
| validate_password_special_char_count | 1     |
+--------------------------------------+-------+
6 rows in set (0.00 sec)
```

还有一个修改存储过程 权限什么的

总之 我佛了

```mysql
# 先创建用户tom，密码为tom
mysql> create user 'tom'@'loaclhost' identified by 'tom';
# 再赋予具体表glodon_test权限
mysql> GRANT ALL privileges ON glodon_test TO 'tom'@'localhost';
Query OK, 0 rows affected (0.08 sec)
# 刷新权限即可生效
mysql> flush privileges;
```

- [ ] TCP/IP 第一卷
- [ ] iptables
- [ ] 手机Chrome 登录
- [ ] 寄鞋子
- [ ] 消息截断 解包失败 处理 格斗之皇 算法
- [ ] 阿里云国内服务器 blog相应太慢
- [ ] mysql 同步
- [ ] mysql slave 主从同步
- [ ] redis 集群
- [ ] 安卓pdf 阅读器
- [ ] vscode java 调试 工程
- [ ] 3m口罩使用方法
- [ ] 维修状态
- [ ] 百度网盘自动照片备份找回
- [ ] 百度网盘 注册 mum 手机 短信 ipad 下载
- [ ] linkin 消息处理

- [ ] tborg, chubby设计 paxos算法 zookeeper

- [x] linux socket select poll epoll
- [ ] 高性能MySQL，深度探索c++
- [ ] TCP/IP 一二章
- [ ] 找游泳 办卡

- [ ] java父子线程 关系
- [ ] Java代码
- [ ] java 入门与精通
- [ ] runnable，thread Java 区别
- [ ] netty easy UI jquery storm Hadoop mina spring mybaits mysql
- [ ] opcode 缓存
- [ ] 数据库规范化设计高性能可扩展的数据库架构
- [ ] 从数据库层面解决千万级大数据量查询慢的问题
- [ ] 使用binlog对数据库进行时间点的恢复
- [ ] 从简单的主从复制到主从分离的多种解决方案
- [ ] mysql学习笔记总结

`this week`

- [ ] 绿皮数据结构 finish
- [ ] 阿哈算法 finish
- [ ] 操作系统精髓与设计原理 看5个章节
- [ ] 容器 docker kerbernate 部署一下
- [ ] lua内存泄漏

`later`

- [x] cmake
- [ ] python
- [ ] mongodb
- [ ] skynet
- [ ] rocketmq
- [ ] hazard version
- [ ] go
- [ ] kbengine
- [ ] jemalloc
- [ ] protobuf

`further`

- [ ] /proc/meminfo, iostat,
- [ ] jemalloc 源码 如何申请内存与分配内存
- [ ] go learning
- [ ] kbengine
- [ ] protobuf 源码
- [ ] redis 源码
- [ ] MongoDB 源码
- [ ] hazard version
- [ ] lua 手册
- [ ] skynet
- [ ] rocketmq 接口源码
- [ ] binary-sort tree c 实现 优化handle name retire 遍历
- [ ] lua red-black tree 数据接口实现
- [x] C++ 高质量编程
- [ ] 熟悉Unix/Linux操作系统原理，常用工具；
- [ ] 有过独立完整设计复杂系统功能的经验；
- [ ] 有过高并发，高性能分布式开发经验；
- [ ] 具备大容量、高性能系统的设计和架构能力；熟悉分布式系统的基础理论, 有高并发系统的架构设计、开发和调试经验
- [ ] TCP/HTTP协议、socket编程、reactor网络框架
- [ ] 分布式系统设计和实现
- [ ] Mysql 调优
- [ ] gdb
- [ ] Python
- [ ] 功能内存 share mem
- [ ] skynet
- [ ] 机器学习
- [ ] 数据结构 算法
- [ ] 直接搞u3d 或者 unreal
- [ ] C++ warcraft 项目继续做
- [ ] 皮卡丘机器人
- [ ] 格斗之皇项目部署
- [ ] 阿哈算法 最后一章没有理解好
- [ ] 清理微博了 要把转回来 MARK 的看看学习哦
- [ ] 整理一下挂机项目
- [ ] 整理一下三国吧兄弟项目
- [ ] 整理一下乱斗江湖的项目
- [ ] php runtime 优化
- [ ] 并行请求swool curl_muti
- [ ] xhprof php 性能测试插件

> life

- [ ] 耳机🎧怎么处理 修还是捐还好扔还是送
- [ ] 衣服捐献
- [ ] 我觉得我真的得要认真看看怎么减肥的了 身体太笨重了 不灵活
- [ ] 读书 曾国藩
- [ ] 读书 编程珠玑
- [ ] 读英语 练习口语 单词 阅读英文报刊
- [ ] 学换轮胎 学一些必要修车技能
- [ ] 学钢琴
- [ ] 学专业煮菜
- [ ] 学好一点英语,流畅口语 写作,tofel

> reminder

- 生活作息不对 要调整  要七点起床 11点睡觉 成年人要八小时睡眠
- 吃饭 按时吃饭 按时睡觉 按时完成每天计划 这样就不会熬夜 就不会不知道每天该干什么
- 学习
- 看着自己一天天腐烂 行将就木 张一山92年 毕业 15年毕业 工作2年半 我感到非常痛心 这些年我究竟怎么过来的

04 | 05 | 06 | 07 | 08 | 09 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 |
---|--- |--- |--- |--- |--- |--- |--- |--- |--- |--- |--- |--- |--- |
TUE|WED |THU |FRI |SAT |SUN |MON |TUE |WED |THU |FRI |SAT |SUN |MON |
   |    |    |    |    |    |    |    |    |    |    |    |    |    |

---
