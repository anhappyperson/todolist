package com.example.todolist.infrastructure.repository.user.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.todolist.infrastructure.repository.user.po.UserPo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * ORM actual SQL execution mapper
 * table: users
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Mapper
public interface UserMapper extends BaseMapper<UserPo> {

    /**
     * find single user by primary id
     * ShardingSphere will sharding target table by userId%20
     *
     * @param id primary id
     * @return {@link UserPo }
     * @author 何佳琦 
     */
    @Select("select * from users where id = #{id}")
    UserPo findUserById(@Param("id") Long id);


}
