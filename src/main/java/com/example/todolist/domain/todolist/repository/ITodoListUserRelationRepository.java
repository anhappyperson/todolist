package com.example.todolist.domain.todolist.repository;

import com.example.todolist.domain.todolist.entity.TodoListUserRelation;
import java.util.List;

/**
 * todolist domain layer repository definition
 *
 * @author 何佳琦
 * @version 1.0.0
 */
public interface ITodoListUserRelationRepository {

    /**
     * find multi todolist user relation by userId
     * order by todolist redundancies data score reverse and limit top offset
     * assembler convert po to entity
     *
     * @param userId user primary id
     * @param offset top N data quantity
     * @return {@link List }<{@link TodoListUserRelation }>
     * @author 何佳琦
     */
    List<TodoListUserRelation> findRelationListByUserIdOrderByScore(long userId, int offset);
}
