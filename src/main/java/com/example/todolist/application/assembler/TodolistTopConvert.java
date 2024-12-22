package com.example.todolist.application.assembler;

import com.example.todolist.domain.todolist.entity.TodoList;
import com.example.todolist.domain.todolist.entity.TodoListUserRelation;
import com.example.todolist.interfaces.response.TodoListResponse;
import java.util.List;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;
import org.mapstruct.factory.Mappers;

/**
 * @author 何佳琦
 * @version 1.0.0
 * @date 2024-12-22
 */
@Mapper
public interface TodolistTopConvert {

    TodolistTopConvert INSTANCE = Mappers.getMapper(TodolistTopConvert.class);

    @Mapping(target = "permissions", source = "entity.relations", qualifiedByName = "getRelationPermissions")
    @Mapping(target = "todolistId", source = "id")
    TodoListResponse convert(TodoList entity);

    @Named("getRelationPermissions")
    default String getRelationPermissions(List<TodoListUserRelation> relationList) {
        return relationList.get(0).getPermissions();
    }

    List<TodoListResponse> convert(List<TodoList> entityList);


}
