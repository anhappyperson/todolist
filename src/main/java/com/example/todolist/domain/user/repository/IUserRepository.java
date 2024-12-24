package com.example.todolist.domain.user.repository;

import com.example.todolist.domain.user.entity.User;

/**
 * user domain layer repository definition
 *
 * @author 何佳琦
 * @version 1.0.0
 */
public interface IUserRepository {

    /**
     * find single user by primary id
     * assembler convert po to entity
     *
     * @param id user primary key
     * @return {@link User }
     * @author 何佳琦
     */
    User findUserById(long id);

}
