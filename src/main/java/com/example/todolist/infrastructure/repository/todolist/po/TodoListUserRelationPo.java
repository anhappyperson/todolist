package com.example.todolist.infrastructure.repository.todolist.po;

import com.baomidou.mybatisplus.annotation.TableName;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import lombok.Data;

/**
 * persistent object for table todolist_user_relation
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Data
@TableName("todolist_user_relation")
public class TodoListUserRelationPo {

    /**
     * primary id
     */
    private Long id;

    /**
     * todolist primary id
     */
    private Long todolistId;

    /**
     * user primary id
     */
    private Long userId;

    /**
     * user permissions for this todolist
     */
    private String permissions;

    /**
     * redundant data: todolist score
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
