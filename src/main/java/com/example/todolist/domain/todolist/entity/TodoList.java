package com.example.todolist.domain.todolist.entity;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * todolist entity
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@NoArgsConstructor
@Getter
@Setter
public class TodoList {

    private long id;

    private String title;

    private long ownerId;

    private BigDecimal score;

    private LocalDateTime dueDate;

    private LocalDateTime createAt;

    private LocalDateTime updateAt;

    private List<TodoListUserRelation> relations;

}
