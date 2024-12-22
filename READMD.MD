# Project Introduction

工程构建工具为 maven，Java 版本 17， springboot 作为 web 框架，ORM 使用 mybatis-plus，分库分表使用 apache shardingsphere，一个云端  Mysql 作为演示数据库。

工程结构采用简单的领域驱动设计模式 package方式，将工程源码包分为

- interfaces：实现 restapi 并负责 请求值/返回值 处理
- application：直接对业务场景负责，编排 domain 服务完成业务代码
- domain：包含实体、领域服务、仓储定义
  - users：用户领域
  - todolist：待办事项领域
- infrastructure：包含持久化的具体实现
- common：通用类

docs 文件夹存放了 数据库初始化脚本，如有需要可以本地自行导入，但不是必须项

# API

参考 API.MD

流程图：



# Database

作为演示 demo 工程，核心表包括 users、todolist、todolist_user_relation,分别存储 用户信息、待办事项、用户待办事项关系。

使用 Apache ShardingSphere 作为分库分表组件库。主要的规则如下：

- users：根据 userId 取模 20 分表
- todolist：根据 todolistId 取模 20 分表
- todolist_user_relation：根据 userId 取模 20 分表

目前对 table 进行 shard 已经可以大致演示分库分表的逻辑，本工程只有一个数据源 ds_0

详细信息参考 resources/sharding-config.yaml

> 当您启动服务并模拟 API 请求时，console 可以看到 Logic SQL和Actual SQL 信息，以便更好的查看分表 sql 详情

# Test

本工程使用集成测试代替范围更小的单元测试，主要原因如下：

- 能测试真实的分片路由逻辑
- 验证跨分片查询的正确性
- 能发现组件间集成的问题
- ...

集成测试 case：分页正确性、排序正确性、测试不存在的用户

# Run

本地安装有 JDK 17。

在常见Java 编译器例如 IntelliJ IDEA、Eclipse 中导入本工程，使用 maven 构建。

run/debug  TodoListApplication#main(args) 即可启动本工程。

> 目前工程依赖的组件均在 maven 中央仓库中



# 其他

时间有限，还有其他应当考虑方面，包括但不限于：

- 多级缓存减少 Mysql 压力
- 分布式锁来处理并发
- 完整的异常处理
- 多数据源接入
- 使用 openapi  管理 RESTful API
- .....

