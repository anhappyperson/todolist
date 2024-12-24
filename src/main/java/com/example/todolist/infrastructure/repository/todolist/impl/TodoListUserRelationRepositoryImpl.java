package com.example.todolist.infrastructure.repository.todolist.impl;

import com.example.todolist.domain.todolist.entity.TodoListUserRelation;
import com.example.todolist.domain.todolist.repository.ITodoListUserRelationRepository;
import com.example.todolist.infrastructure.repository.todolist.assembler.TodoListUserRelationPoConvert;
import com.example.todolist.infrastructure.repository.todolist.mapper.TodoListUserRelationMapper;
import com.example.todolist.infrastructure.repository.todolist.po.TodoListUserRelationPo;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * todolist domain layer repository definition impl class
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Service
@RequiredArgsConstructor
public class TodoListUserRelationRepositoryImpl implements ITodoListUserRelationRepository {

    private final TodoListUserRelationMapper todoListUserRelationMapper;


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
    @Override
    public List<TodoListUserRelation> findRelationListByUserIdOrderByScore(long userId, int offset) {
        List<TodoListUserRelationPo> poList =
            todoListUserRelationMapper.findRelationListByUserIdOrderByScore(userId, offset);
        return TodoListUserRelationPoConvert.INSTANCE.convert(poList);
    }
}
