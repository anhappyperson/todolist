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
 * @author 何佳琦
 * @version 1.0.0
 */
@Service
@RequiredArgsConstructor
public class TodoListRepositoryImpl implements ITodoListRepository {

    private final TodoListMapper todoListMapper;


    @Override
    public List<TodoList> findTodolistByIdList(List<Long> todolistIdList) {
        List<TodoListPo> poList = todoListMapper.findTodolistByIdList(todolistIdList);
        return TodoListPoConvert.INSTANCE.convert(poList);
    }
}
