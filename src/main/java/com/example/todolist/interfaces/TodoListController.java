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
 * todolist api controller
 *
 * @author 何佳琦
 */
@RestController()
@RequestMapping("/todolist")
@RequiredArgsConstructor
public class TodoListController {

    private final TodoListApplicationService todoListApplicationService;


    /**
     * find a user top N todolist reverse order by score
     *
     * @param userId user primary key
     * @param offset user top N todolist quantity
     * @return {@link Response }
     * @author 何佳琦 
     */
    @GetMapping(value = "/top")
    @ResponseBody
    public Response top(
        @RequestParam(value = "userId") Long userId,
        @RequestParam(value = "offset", required = false, defaultValue = "10") Integer offset
    ) {
        List<TodoList> data = todoListApplicationService.findTodoListsByUserIdOrderByScore(userId, offset);
        // build response and return
        return Response.of(TodolistTopConvert.INSTANCE.convert(data));
    }

}
