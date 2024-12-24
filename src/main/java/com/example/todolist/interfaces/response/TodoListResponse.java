package com.example.todolist.interfaces.response;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import lombok.Data;

/**
 * todolist api response dto
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Data
public class TodoListResponse implements Serializable {

    /**
     * todolist primary key
     */
    private long todolistId;

    /**
     * todolist title
     */
    private String title;

    /**
     * todolist admin user
     */
    private long ownerId;

    /**
     * todolist score
     * decimal(5,2)
     */
    private BigDecimal score;

    /**
     * current user permissions for this todolist
     * enum: read,write,....
     */
    private String permissions;

    /**
     * due date
     * example: 2024-12-22T21:52:52
     */
    private LocalDateTime dueDate;


}
