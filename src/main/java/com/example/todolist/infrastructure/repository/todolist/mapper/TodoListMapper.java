package com.example.todolist.infrastructure.repository.todolist.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.todolist.infrastructure.repository.todolist.po.TodoListPo;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * ORM actual SQL execution mapper
 * table: todolist
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Mapper
public interface TodoListMapper extends BaseMapper<TodoListPo> {

    /**
     * find multi todolist by primary id
     * ShardingSphere will sharding target table by todolistId%20
     *
     * @param todolistIdList target todolist primary key list
     * @return {@link List }<{@link TodoListPo }>
     * @author 何佳琦
     */
    @Select({
        "<script>",
        "SELECT * FROM todolist",
        "WHERE id IN",
        "<foreach collection='todolistIdList' item='id' open='(' separator=',' close=')'>",
        "#{id}",
        "</foreach>",
        "</script>"
    })
    List<TodoListPo> findTodolistByIdList(@Param("todolistIdList") List<Long> todolistIdList);
}
