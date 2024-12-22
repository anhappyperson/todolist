package com.example.todolist.domain.user.service;

import com.example.todolist.domain.user.entity.User;
import com.example.todolist.domain.user.repository.IUserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * @author 何佳琦
 * @version 1.0.0
 * @date 2024-12-21
 */
@Service
@RequiredArgsConstructor
public class UserDomainService {

    private final IUserRepository userRepository;

    public User findUserById(long userId) {
        return userRepository.findUserById(userId);
    }


}
