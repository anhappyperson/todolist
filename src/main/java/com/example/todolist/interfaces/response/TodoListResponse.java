package com.example.todolist.interfaces.response;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import lombok.Data;

/**
 * @author 何佳琦
 * @version 1.0.0
 * @date 2024-12-22
 */
@Data
public class TodoListResponse implements Serializable {

    private long todolistId;

    private String title;

    private long ownerId;

    private BigDecimal score;

    private String permissions;

    private LocalDateTime dueDate;


}
