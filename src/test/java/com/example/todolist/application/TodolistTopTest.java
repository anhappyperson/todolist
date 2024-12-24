package com.example.todolist.application;

import com.example.todolist.TodoListApplication;
import com.example.todolist.application.service.TodoListApplicationService;
import com.example.todolist.domain.todolist.entity.TodoList;
import jakarta.annotation.Resource;
import java.util.List;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * todolist integration test
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@SpringBootTest(classes = TodoListApplication.class, webEnvironment = SpringBootTest.WebEnvironment.MOCK)
public class TodolistTopTest {

    @Resource
    private TodoListApplicationService service;

    private static final long USER_ID_EXIST = 18;

    private static final long USER_ID_NOT_EXIST = 99999;

    private static final long USER_ID_DONT_HAVE_TODOLIST = 17;

    /**
     * test todolist top api core feature
     * 1.offset
     * 2.sort by score
     *
     * @author 何佳琦
     */
    @Test
    void testTodolistTopOffset(){
        // offset 10
        List<TodoList> list = service.findTodoListsByUserIdOrderByScore(USER_ID_EXIST, 10);
        Assertions.assertNotNull(list);
        Assertions.assertFalse(list.isEmpty());
        Assertions.assertEquals(10, list.size());
        for (int i = 0; i < list.size() - 1; i++) {
            Assertions.assertTrue(list.get(i).getScore().compareTo(list.get(i+1).getScore()) >= 0);
        }
    }

    /**
     * test todolist top api edge scenarios
     * 1.user not exist
     * 2.user dont have todolist
     *
     * @author 何佳琦
     */
    @Test
    void testTodolistTopNotExistScenarios(){
        List<TodoList> list = service.findTodoListsByUserIdOrderByScore(USER_ID_NOT_EXIST, 10);
        Assertions.assertNotNull(list);
        Assertions.assertTrue(list.isEmpty());

        list = service.findTodoListsByUserIdOrderByScore(USER_ID_DONT_HAVE_TODOLIST, 10);
        Assertions.assertNotNull(list);
        Assertions.assertTrue(list.isEmpty());
    }


}
