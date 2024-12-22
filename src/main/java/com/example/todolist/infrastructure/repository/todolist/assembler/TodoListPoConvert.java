package com.example.todolist.infrastructure.repository.todolist.assembler;

import com.example.todolist.domain.todolist.entity.TodoList;
import com.example.todolist.infrastructure.repository.todolist.po.TodoListPo;
import java.util.List;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

/**
 * @author 何佳琦
 * @version 1.0.0
 * @date 2024-12-22
 */
@Mapper
public interface TodoListPoConvert {

    TodoListPoConvert INSTANCE = Mappers.getMapper(TodoListPoConvert.class);

    @Mapping(target = "relations", ignore = true)
    TodoList convert(TodoListPo po);

    List<TodoList> convert(List<TodoListPo> poList);

}
