package com.example.todolist.domain.user.repository;

import com.example.todolist.domain.user.entity.User;

/**
 * @author 何佳琦
 * @version 1.0.0
 * @date 2024-12-21
 */
public interface IUserRepository {

    User findUserById(long id);

}
