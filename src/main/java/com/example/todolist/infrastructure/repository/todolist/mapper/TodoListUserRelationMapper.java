package com.example.todolist.infrastructure.repository.todolist.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.todolist.infrastructure.repository.todolist.po.TodoListUserRelationPo;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * @author 何佳琦
 * @version 1.0.0
 * @date 2024-12-21
 */
@Mapper
public interface TodoListUserRelationMapper extends BaseMapper<TodoListUserRelationPo> {

    @Select("select * from todolist_user_relation where user_id = #{userId} order by score desc limit 0,#{offset}")
    List<TodoListUserRelationPo> findRelationListByUserIdOrderByScore(@Param("userId") long userId,
        @Param("offset") int limit);
}
