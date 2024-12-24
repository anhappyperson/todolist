package com.example.todolist.infrastructure.repository.todolist.impl;

import com.example.todolist.domain.todolist.entity.TodoList;
import com.example.todolist.domain.todolist.repository.ITodoListRepository;
import com.example.todolist.infrastructure.repository.todolist.assembler.TodoListPoConvert;
import com.example.todolist.infrastructure.repository.todolist.mapper.TodoListMapper;
import com.example.todolist.infrastructure.repository.todolist.po.TodoListPo;
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
public class TodoListRepositoryImpl implements ITodoListRepository {

    private final TodoListMapper todoListMapper;


    /**
     * find multi todolist by primary id
     * assembler convert po to entity
     *
     * @param todolistIdList target todolist primary key list
     * @return {@link List }<{@link TodoList }>
     * @author 何佳琦 
     */
    @Override
    public List<TodoList> findTodolistByIdList(List<Long> todolistIdList) {
        List<TodoListPo> poList = todoListMapper.findTodolistByIdList(todolistIdList);
        return TodoListPoConvert.INSTANCE.convert(poList);
    }
}
