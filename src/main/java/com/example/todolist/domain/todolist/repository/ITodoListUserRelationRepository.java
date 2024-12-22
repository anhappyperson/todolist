package com.example.todolist.domain.todolist.repository;

import com.example.todolist.domain.todolist.entity.TodoListUserRelation;
import java.util.List;

/**
 * @author 何佳琦
 * @version 1.0.0
 * @date 2024-12-21
 */
public interface ITodoListUserRelationRepository {


    List<TodoListUserRelation> findRelationListByUserIdOrderByScore(long userId, int limit);
}
