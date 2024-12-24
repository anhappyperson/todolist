package com.example.todolist.infrastructure.repository.todolist.assembler;

import com.example.todolist.domain.todolist.entity.TodoListUserRelation;
import com.example.todolist.infrastructure.repository.todolist.po.TodoListUserRelationPo;
import java.util.List;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * po convert to entity mapstruct mapper util
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Mapper
public interface TodoListUserRelationPoConvert {

    TodoListUserRelationPoConvert INSTANCE = Mappers.getMapper(TodoListUserRelationPoConvert.class);

    /**
     * convert todolistUserRelation po to entity
     *
     * @param po persistent object
     * @return {@link TodoListUserRelation }
     * @author 何佳琦
     */
    TodoListUserRelation convert(TodoListUserRelationPo po);

    /**
     * convert todolistUserRelation po list to entity list
     *
     * @param poList persistent object list
     * @return {@link List }<{@link TodoListUserRelation }>
     * @author 何佳琦
     */
    List<TodoListUserRelation> convert(List<TodoListUserRelationPo> poList);

}
