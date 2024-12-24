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

Based on the content of the previous test, the core technical difficulty is the storage and querying massive amounts of data, and using database sharding can reduce the pressure on the database. Using Apache ShardingShpere as sharding database and table component lib. The sharding algorithm rules:

- users：userId % 20 to sharding table
- todolist：todolistId % 20 to sharding table
- todolist_user_relation：userId % 20 to sharding table

Currently, sharding for the table can roughly show the logic of database and table sharding. This project only has one data source, ds_0. Detailed infomation reference resources/sharding-config.yaml

> When you startup this java application and send a http request. The ide console will show Logic SQL&Actual SQL to better review the detail SQL infomation.

# Cache

When call query api, the demo code show the use of cache in a very simple way. If in a production env, we need consider many issues as :

- Consistency
- Hit Rate
- Cache Granularity

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

