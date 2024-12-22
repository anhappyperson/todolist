package com.example.todolist.application.service;

import com.example.todolist.domain.todolist.entity.TodoList;
import com.example.todolist.domain.todolist.service.TodoListDomainService;
import com.example.todolist.domain.user.entity.User;
import com.example.todolist.domain.user.service.UserDomainService;
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
     * 按用户id按分数排序查找待办事项列表
     *
     * @param userId 用户id
     * @param limit  限制
     * @return {@link List }
     * @author 何佳琦  hejiaqi@itbox.cn
     */
    public List<TodoList> findTodoListsByUserIdOrderByScore(long userId, int limit) {
        // 查询用户基本信息
        User user = userDomainService.findUserById(userId);
        if (user == null) {
            return null;
        }
        // 查询 todolist
        return todoListDomainService.findTodoListByUserOrderByScore(user.getId(), limit);
    }

}
