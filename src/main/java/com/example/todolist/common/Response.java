package com.example.todolist.common;

import java.io.Serializable;
import java.util.UUID;
import lombok.Data;

/**
 * common rest response wrapper class
 *
 * @author 何佳琦
 * @version 1.0.0
 */
@Data
public class Response implements Serializable {

    /**
     * logic success
     */
    private boolean success;

    /**
     * request id
     * uuid
     */
    private String requestId;

    /**
     * server current time in milliseconds
     */
    private long serverTime;

    /**
     * response
     * 200,400,...
     */
    private int code;

    /**
     * response message
     */
    private String msg;

    /**
     * response biz data
     */
    private Object data;

    /**
     * build return value with biz data
     *
     * @param data biz data
     * @return {@link Response }
     * @author 何佳琦
     */
    public static Response of(Object data) {
        Response response = new Response();
        response.setSuccess(true);
        response.setRequestId(UUID.randomUUID().toString());
        response.setServerTime(System.currentTimeMillis());
        response.setMsg("ok");
        response.setData(data);
        response.setCode(200);
        return response;
    }

    /**
     * build return value with none biz data
     *
     * @return {@link Response }
     * @author 何佳琦
     */
    public static Response of() {
        Response response = new Response();
        response.setSuccess(true);
        response.setRequestId(UUID.randomUUID().toString());
        response.setServerTime(System.currentTimeMillis());
        response.setMsg("ok");
        response.setCode(200);
        return response;
    }
}
