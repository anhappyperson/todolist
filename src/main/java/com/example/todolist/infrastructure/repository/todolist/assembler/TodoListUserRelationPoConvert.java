package com.example.todolist.infrastructure.repository.todolist.assembler;

import com.example.todolist.domain.todolist.entity.TodoListUserRelation;
import com.example.todolist.infrastructure.repository.todolist.po.TodoListUserRelationPo;
import java.util.List;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * @author 何佳琦
 * @version 1.0.0
 */
@Mapper
public interface TodoListUserRelationPoConvert {

    TodoListUserRelationPoConvert INSTANCE = Mappers.getMapper(TodoListUserRelationPoConvert.class);

    TodoListUserRelation convert(TodoListUserRelationPo po);

    List<TodoListUserRelation> convert(List<TodoListUserRelationPo> poList);

}
