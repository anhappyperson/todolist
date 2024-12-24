package com.example.todolist.domain.user.entity;

import java.time.LocalDateTime;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * user entity
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@NoArgsConstructor
@Getter
@Setter
public class User {

    /**
     * primary key
     */
    private long id;

    /**
     * 用户名
     */
    private String username;

    private LocalDateTime createAt;

}
