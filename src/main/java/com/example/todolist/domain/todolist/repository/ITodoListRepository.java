package com.example.todolist.domain.todolist.repository;

import com.example.todolist.domain.todolist.entity.TodoList;
import java.util.List;

/**
 * todolist domain layer repository definition
 *
 * @author 何佳琦
 * @version 1.0.0
 */
public interface ITodoListRepository {

    /**
     * find multi todolist by primary id
     * assembler convert po to entity
     *
     * @param todolistIdList target todolist primary key list
     * @return {@link List }<{@link TodoList }>
     * @author 何佳琦
     */
    List<TodoList> findTodolistByIdList(List<Long> todolistIdList);
}
