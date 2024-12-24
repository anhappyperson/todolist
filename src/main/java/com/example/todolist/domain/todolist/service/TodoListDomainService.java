package com.example.todolist.domain.todolist.service;

import com.example.todolist.domain.todolist.entity.TodoList;
import com.example.todolist.domain.todolist.entity.TodoListUserRelation;
import com.example.todolist.domain.todolist.repository.ITodoListRepository;
import com.example.todolist.domain.todolist.repository.ITodoListUserRelationRepository;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * todolist domain service
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Service
@RequiredArgsConstructor
public class TodoListDomainService {

    private final ITodoListRepository todoListRepository;

    private final ITodoListUserRelationRepository todoListUserRelationRepository;


    /**
     * 1.query relation list
     * 2.query todolist by relation
     * 3.sort and fill info
     *
     * @param userId user primary key
     * @param offset top N data quantity
     * @return {@link List }<{@link TodoList }>
     * @author 何佳琦
     */
    public List<TodoList> findTodoListByUserOrderByScore(long userId, int offset) {
        // query relation list
        List<TodoListUserRelation> relationList =
            todoListUserRelationRepository.findRelationListByUserIdOrderByScore(userId, offset);
        if (relationList == null || relationList.isEmpty()) {
            return Collections.emptyList();
        }
        // query todolist by todolistIds
        List<Long> todolistIdList = relationList.stream().map(TodoListUserRelation::getTodolistId).toList();
        List<TodoList> data = todoListRepository.findTodolistByIdList(todolistIdList);
        // logic sort and fill other info
        return data.stream()
                   // logical sort
                   .sorted(Comparator.comparing(TodoList::getScore).reversed())
                   // fill relation info (permissions)
                   .peek(todoList -> {
                       for (TodoListUserRelation relation : relationList) {
                           if (relation.getUserId() == userId && relation.getTodolistId() == todoList.getId()) {
                               todoList.setRelations(List.of(relation));
                               break;
                           }
                       }
                   }).toList();
    }
}
