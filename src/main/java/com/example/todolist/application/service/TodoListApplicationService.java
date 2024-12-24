package com.example.todolist.application.service;

import com.example.todolist.domain.todolist.entity.TodoList;
import com.example.todolist.domain.todolist.service.TodoListDomainService;
import com.example.todolist.domain.user.entity.User;
import com.example.todolist.domain.user.service.UserDomainService;
import java.util.Collections;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * @author 何佳琦
 * @version 1.0.0
 */
@Service
@RequiredArgsConstructor
public class TodoListApplicationService {

    private final UserDomainService userDomainService;

    private final TodoListDomainService todoListDomainService;


    /**
     * 1. call user domain service -> query&check user
     * 2. call todolist domain service -> query todolist data
     *
     * @param userId user primary key
     * @param offset top N data quantity
     * @return {@link List }
     * @author 何佳琦 
     */
    public List<TodoList> findTodoListsByUserIdOrderByScore(long userId, int offset) {
        // query user by id
        User user = userDomainService.findUserById(userId);
        if (user == null) {
            return Collections.emptyList();
        }
        // query todolist
        return todoListDomainService.findTodoListByUserOrderByScore(user.getId(), offset);
    }

}
