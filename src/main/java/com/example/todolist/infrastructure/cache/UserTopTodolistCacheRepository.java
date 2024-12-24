package com.example.todolist.infrastructure.cache;

import com.example.todolist.domain.todolist.entity.TodoList;
import com.github.benmanes.caffeine.cache.Cache;
import com.github.benmanes.caffeine.cache.Caffeine;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/**
 * user's top N todolist cache simple implementation
 *
 * @author 何佳琦
 * @version 1.0.0
 */
public class UserTopTodolistCacheRepository {

    private static final Cache<Long, Map<Integer, List<TodoList>>> CACHE =
        Caffeine.newBuilder()
                .expireAfterAccess(10, TimeUnit.MINUTES)
                .maximumSize(100_000)
                .build();


    /**
     * find user's todolist cache data by userId&offset
     *
     * @param userId user primary id
     * @param offset user top N todolist quantity
     * @return {@link List }<{@link TodoList }>
     * @author 何佳琦
     */
    public static List<TodoList> findByUserIdAndOffset(long userId, int offset) {
        Map<Integer, List<TodoList>> map = CACHE.getIfPresent(userId);
        if (map == null) {
            return null;
        }
        return map.get(offset);
    }


    /**
     * remove user's todolist cache by userId
     *
     * @param userId user primary
     * @author 何佳琦
     */
    public static void invalidateByUserId(long userId) {
        CACHE.invalidate(userId);
    }


    /**
     * update user's todolist cache by userId&offset
     *
     * @param userId user primary id
     * @param offset user's todolist top N quantity
     * @param data   target cache data
     * @author 何佳琦
     */
    public static void updateUserTodolistByUserIdAndOffset(long userId, int offset, List<TodoList> data) {
        Map<Integer, List<TodoList>> map = CACHE.get(userId, k -> new HashMap<>());
        map.put(offset, data);
        CACHE.put(userId, map);
    }
}
