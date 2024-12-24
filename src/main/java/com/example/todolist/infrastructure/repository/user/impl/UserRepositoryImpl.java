package com.example.todolist.infrastructure.repository.user.impl;

import com.example.todolist.domain.user.entity.User;
import com.example.todolist.domain.user.repository.IUserRepository;
import com.example.todolist.infrastructure.repository.user.assembler.UserPoConvert;
import com.example.todolist.infrastructure.repository.user.mapper.UserMapper;
import com.example.todolist.infrastructure.repository.user.po.UserPo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * users domain layer repository definition impl class
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Service
@RequiredArgsConstructor
public class UserRepositoryImpl implements IUserRepository {

    private final UserMapper userMapper;

    /**
     * find single user by primary id
     * assembler convert po to entity
     *
     * @param id user primary key
     * @return {@link User }
     * @author 何佳琦 
     */
    @Override
    public User findUserById(long id) {
        UserPo userPo = userMapper.findUserById(id);
        return UserPoConvert.INSTANCE.convert(userPo);
    }
}
