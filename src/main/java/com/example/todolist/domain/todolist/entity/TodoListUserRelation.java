package com.example.todolist.domain.todolist.entity;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * todolist user relation entity
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@NoArgsConstructor
@Getter
@Setter
public class TodoListUserRelation {

    private Long id;
    private Long todolistId;
    private Long userId;
    private String permissions;
    private BigDecimal score;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;
}
