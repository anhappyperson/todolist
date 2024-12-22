package com.example.todolist.domain.todolist.repository;

import com.example.todolist.domain.todolist.entity.TodoList;
import java.util.List;

/**
 * @author 何佳琦
 * @version 1.0.0
 */
public interface ITodoListRepository {


    List<TodoList> findTodolistByIdList(List<Long> todolistIdList);
}
