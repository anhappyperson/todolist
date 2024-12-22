package com.example.todolist.domain.todolist.service;

import com.example.todolist.domain.todolist.entity.TodoList;
import com.example.todolist.domain.todolist.entity.TodoListUserRelation;
import com.example.todolist.domain.todolist.repository.ITodoListRepository;
import com.example.todolist.domain.todolist.repository.ITodoListUserRelationRepository;
import jakarta.annotation.Resource;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 * @author 何佳琦
 * @version 1.0.0
 * @date 2024-12-21
 */
@Service
public class TodoListDomainService {

    @Resource
    ITodoListRepository todoListRepository;

    @Resource
    ITodoListUserRelationRepository todoListUserRelationRepository;


    public List<TodoList> findTodoListByUserOrderByScore(long userId, int limit) {
        List<TodoList> data = new ArrayList<>(limit);
        // 查询关联关系
        List<TodoListUserRelation> relationList = todoListUserRelationRepository.findRelationListByUserIdOrderByScore(
            userId, limit);
        if (relationList == null || relationList.isEmpty()) {
            return data;
        }
        // 查询数据
        List<Long> todolistIdList = relationList.stream().map(TodoListUserRelation::getTodolistId).toList();
        data = todoListRepository.findTodolistByIdList(todolistIdList);
        // 组装
        return data.stream()
                   // 逻辑排序
                   .sorted(Comparator.comparing(TodoList::getScore).reversed())
                   // 设置关联信息
                   .peek(todoList -> {
                       for (TodoListUserRelation relation : relationList) {
                           if (relation.getUserId().equals(userId)
                               && relation.getTodolistId().equals(todoList.getId())) {
                               todoList.setRelations(List.of(relation));
                               break;
                           }
                       }
                   }).toList();
    }
}
