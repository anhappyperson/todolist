package com.example.todolist.domain.user.repository;

import com.example.todolist.domain.user.entity.User;

/**
 * @author 何佳琦
 * @version 1.0.0
 */
public interface IUserRepository {

    User findUserById(long id);

}
