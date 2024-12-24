package com.example.todolist.infrastructure.repository.todolist.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.todolist.infrastructure.repository.todolist.po.TodoListUserRelationPo;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * ORM actual SQL execution mapper
 * table: todolist_user_relation
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Mapper
public interface TodoListUserRelationMapper extends BaseMapper<TodoListUserRelationPo> {

    /**
     * find multi todolist user relation by userId
     * ShardingSphere will sharding target table by userId%20
     * order by todolist redundancies data score reverse and limit top offset
     *
     * @param userId user primary key
     * @param offset top N data quantity
     * @return {@link List }<{@link TodoListUserRelationPo }>
     * @author 何佳琦 
     */
    @Select("select * from todolist_user_relation where user_id = #{userId} order by score desc limit 0,#{offset}")
    List<TodoListUserRelationPo> findRelationListByUserIdOrderByScore(@Param("userId") long userId,
        @Param("offset") int offset);
}
