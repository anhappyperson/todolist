package com.example.todolist.infrastructure.repository.todolist.assembler;

import com.example.todolist.domain.todolist.entity.TodoList;
import com.example.todolist.infrastructure.repository.todolist.po.TodoListPo;
import java.util.List;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

/**
 * po convert to entity mapstruct mapper util
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Mapper
public interface TodoListPoConvert {

    TodoListPoConvert INSTANCE = Mappers.getMapper(TodoListPoConvert.class);

    /**
     * convert todolist po to entity
     *
     * @param po persistent object
     * @return {@link TodoList }
     * @author 何佳琦
     */
    @Mapping(target = "relations", ignore = true)
    TodoList convert(TodoListPo po);

    /**
     * convert todolist po list to entity list
     *
     * @param poList persistent object list
     * @return {@link List }<{@link TodoList }>
     * @author 何佳琦
     * @date 2024/12/24 09:59:02
     */
    List<TodoList> convert(List<TodoListPo> poList);

}
