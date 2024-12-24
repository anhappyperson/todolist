package com.example.todolist.infrastructure.repository.user.assembler;

import com.example.todolist.domain.user.entity.User;
import com.example.todolist.infrastructure.repository.user.po.UserPo;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * po convert to entity mapstruct mapper util
 *
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Mapper
public interface UserPoConvert {

    UserPoConvert INSTANCE = Mappers.getMapper(UserPoConvert.class);

    /**
     * convert user po to entity
     *
     * @param po persistent object
     * @return {@link User }
     * @author 何佳琦 
     */
    User convert(UserPo po);

}
