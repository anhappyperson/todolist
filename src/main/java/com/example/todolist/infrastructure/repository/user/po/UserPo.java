package com.example.todolist.infrastructure.repository.user.po;

import com.baomidou.mybatisplus.annotation.TableName;
import java.time.LocalDateTime;
import lombok.Data;

/**
 * persistent object for table users
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Data
@TableName("users")
public class UserPo {

    /**
     * primary id
     */
    private Long id;


    /**
     * user nickname
     */
    private String username;


    /**
     * create time
     */
    private LocalDateTime createAt;
}
