package com.example.todolist.interfaces;

import com.example.todolist.application.assembler.TodolistTopConvert;
import com.example.todolist.application.service.TodoListApplicationService;
import com.example.todolist.common.Response;
import com.example.todolist.domain.todolist.entity.TodoList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 何佳琦
 * @version 1.0.0
 */
@RestController()
@RequestMapping("/todolist")
@RequiredArgsConstructor
public class TodoListController {

    private final TodoListApplicationService todoListApplicationService;


    @GetMapping(value = "/top")
    @ResponseBody
    public Response top(
        @RequestParam(value = "userId") Long userId,
        @RequestParam(value = "offset", required = false, defaultValue = "10") Integer offset
    ) {
        List<TodoList> data = todoListApplicationService.findTodoListsByUserIdOrderByScore(userId, offset);
        return Response.of(TodolistTopConvert.INSTANCE.convert(data));
    }

}
