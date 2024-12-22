package com.example.todolist.infrastructure.repository.user.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.todolist.infrastructure.repository.user.po.UserPo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * @author 何佳琦
 * @version 1.0.0
 * @date 2024-12-21
 */
@Mapper
public interface UserMapper extends BaseMapper<UserPo> {

    @Select("select * from users where id = #{id}")
    UserPo findUserById(@Param("id") Long id);


}
