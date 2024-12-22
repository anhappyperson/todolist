package com.example.todolist.infrastructure.repository.user.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.time.LocalDateTime;
import lombok.Data;

/**
 * @author 何佳琦
 * @version 1.0.0
 */
@Data
@TableName("users")
public class UserPo {

    @TableId(type = IdType.AUTO)
    private Long id;
    private String username;
    private LocalDateTime createAt;
}
