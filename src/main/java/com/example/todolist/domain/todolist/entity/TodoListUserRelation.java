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

    /**
     * relation primary id
     */
    private long id;

    /**
     * todolist primary id
     */
    private long todolistId;

    /**
     * user primary id
     */
    private long userId;

    /**
     * current user permission for this todolist
     * enum: read,write,....
     */
    private String permissions;

    /**
     * todolist score
     * decimal(5,2)
     */
    private BigDecimal score;

    /**
     * relation create time
     */
    private LocalDateTime createAt;

    /**
     * relation update time
     */
    private LocalDateTime updateAt;
}
