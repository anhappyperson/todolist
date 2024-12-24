package com.example.todolist.infrastructure.repository.todolist.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import lombok.Data;

/**
 * persistent object for table todolist
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Data
@TableName("todolist")
public class TodoListPo {

    /**
     * primary id
     */
    private Long id;

    /**
     * todolist title
     */
    private String title;

    /**
     * todolist admin user
     */
    private Long ownerId;

    /**
     * todolist score
     * decimal(5,2)
     */
    private BigDecimal score;

    /**
     * due time
     */
    private LocalDateTime dueDate;

    /**
     * create time
     */
    private LocalDateTime createAt;

    /**
     * update time
     */
    private LocalDateTime updateAt;
}
