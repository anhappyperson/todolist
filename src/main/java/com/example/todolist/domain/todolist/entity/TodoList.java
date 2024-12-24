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

    /**
     * todolist primary key
     */
    private long id;

    /**
     * todolist title
     */
    private String title;

    /**
     * todolist admin user id
     */
    private long ownerId;

    /**
     * todolist init score
     */
    private BigDecimal score;

    /**
     * todolist due time
     */
    private LocalDateTime dueDate;

    /**
     * todolist create time
     */
    private LocalDateTime createAt;

    /**
     * todolist update time
     */
    private LocalDateTime updateAt;

    /**
     * current todolist related user and permission
     */
    private List<TodoListUserRelation> relations;

}
