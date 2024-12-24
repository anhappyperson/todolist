package com.example.todolist.domain.user.service;

import com.example.todolist.domain.user.entity.User;
import com.example.todolist.domain.user.repository.IUserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * user domain service
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Service
@RequiredArgsConstructor
public class UserDomainService {

    private final IUserRepository userRepository;

    /**
     * call repository impl class
     *
     * @param userId user primary key
     * @return {@link User }
     * @author 何佳琦
     */
    public User findUserById(long userId) {
        return userRepository.findUserById(userId);
    }


}
