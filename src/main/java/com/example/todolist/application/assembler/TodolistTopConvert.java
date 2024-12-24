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
 * entity convert to request/response mapstruct mapper util
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Mapper
public interface TodolistTopConvert {

    TodolistTopConvert INSTANCE = Mappers.getMapper(TodolistTopConvert.class);

    /**
     * convert todolist entity to response
     *
     * @param entity domain entity
     * @return {@link TodoListResponse }
     * @author 何佳琦  hejiaqi@itbox.cn
     */
    @Mapping(target = "permissions", source = "entity.relations", qualifiedByName = "getRelationPermissions")
    @Mapping(target = "todolistId", source = "id")
    TodoListResponse convert(TodoList entity);

    /**
     * convert one todolist's relation entity to response's permissions param
     *
     * @param relationList todolistUserRelations
     * @return {@link String }
     * @author 何佳琦  hejiaqi@itbox.cn
     */
    @Named("getRelationPermissions")
    default String getRelationPermissions(List<TodoListUserRelation> relationList) {
        return relationList.get(0).getPermissions();
    }

    /**
     * convert todolist entity list to response list
     *
     * @param entityList domain entity list
     * @return {@link List }<{@link TodoListResponse }>
     * @author 何佳琦  hejiaqi@itbox.cn
     */
    List<TodoListResponse> convert(List<TodoList> entityList);


}
