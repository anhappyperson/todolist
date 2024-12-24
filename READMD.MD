# Project Introduction

The project build tool is maven, Java version 17, springboot as the web framework, ORM using mybatis-plus, sharding database and table using apache shardingsphere, a cloud Mysql as the demo database.

The project structure used a simple domain-driven design pattern, dividing the project source code packages into:

- interfaces：Implement the RESTful API and handle the request/response  values.
- application：Directly implement biz scenarios with domain services
- domain：Include entity, domainService, repository definition
  - users：User Domain
  - todolist：Todolist Domain
- infrastructure：Persistent implementation of domain repository definition
- common：common class of other packages

docs folder has MySql init script file.  If you want connect loacl databse, can use this file, but not necessaery。

# API

reference API.MD



# Database

Tables include users, todolist and todolist_user_relation, which store user info,todolist info, and the relation between user and their todolist.

Using Apache ShardingShpere as sharding database and table component lib. The sharding algorithm rule:

- users：userId % 20 to sharding table
- todolist：todolistId % 20 to sharding table
- todolist_user_relation：userId % 20 to sharding table

Based on pre test

根据上一个测试内容，海量数据的存储和查询是核心技术难点，使用分库分表可以大幅度缓解数据库压力，

Currently, sharding for the table can roughly show the logic of database and table sharding. This project only has one data source, ds_0. Detailed infomation reference resources/sharding-config.yaml

> When you startup this java application and send a http request. The ide console will show Logic SQL&Actual SQL to better review the detail SQL infomation.

# Test

This project used Integration Test instead of Unit Test, for the following reasons:

- Can test the real sharding routing logic.
- Verify correctness for sharding query.
- Enable to discover the isuuses between components.
- ...

Integration Test Case：Pagination correctness, Sorting correctness, Diff user test

# Launch

JDK 17 is installed locally.

Import this project into java Ide like Intellij IDEA, and build with Maven.

Run/Debug  TodoListApplication#main(args) 

> All the components in Maven Centrl Repository



# Other

Time limited, there are other aspects to consider, including but not limited to:

- Multi-level caching reduces the load on database
- Distributed locks to handle concurrency
- Complete exception handling
- Multi data source
- Managing RESTful APIs with OpenAPI
- .....

