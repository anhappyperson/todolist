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
 * @author 何佳琦
 * @version 1.0.0
 * @date 2024-12-21
 */
@Service
@RequiredArgsConstructor
public class TodoListUserRelationRepositoryImpl implements ITodoListUserRelationRepository {

    private final TodoListUserRelationMapper todoListUserRelationMapper;


    @Override
    public List<TodoListUserRelation> findRelationListByUserIdOrderByScore(long userId, int limit) {
        List<TodoListUserRelationPo> poList =
            todoListUserRelationMapper.findRelationListByUserIdOrderByScore(userId, limit);
        return TodoListUserRelationPoConvert.INSTANCE.convert(poList);
    }
}
