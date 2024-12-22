package com.example.todolist.domain.todolist.repository;

import com.example.todolist.domain.todolist.entity.TodoListUserRelation;
import java.util.List;

/**
 * @author 何佳琦
 * @version 1.0.0
 */
public interface ITodoListUserRelationRepository {


    List<TodoListUserRelation> findRelationListByUserIdOrderByScore(long userId, int limit);
}
