package com.example.todolist.infrastructure.repository.user.assembler;

import com.example.todolist.domain.user.entity.User;
import com.example.todolist.infrastructure.repository.user.po.UserPo;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * @author 何佳琦
 * @version 1.0.0
 * @date 2024-12-21
 */
@Mapper
public interface UserPoConvert {

    UserPoConvert INSTANCE = Mappers.getMapper(UserPoConvert.class);

    User convert(UserPo po);

}
