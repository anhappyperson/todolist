package com.example.todolist.infrastructure.repository.todolist.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.todolist.infrastructure.repository.todolist.po.TodoListPo;
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
public interface TodoListMapper extends BaseMapper<TodoListPo> {

    //@Select("select * from todolist where id in #{todolistIdList}")
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
