package com.example.todolist.infrastructure.repository.todolist.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import lombok.Data;

/**
 * @author 何佳琦
 * @version 1.0.0
 * @date 2024-12-21
 */
@Data
@TableName("todolist_user_relation")
public class TodoListUserRelationPo {

    @TableId(type = IdType.AUTO)
    private Long id;
    private Long todolistId;
    private Long userId;
    private String permissions;
    private BigDecimal score;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;
}
