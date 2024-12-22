package com.example.todolist.common;

import java.io.Serializable;
import java.util.UUID;
import lombok.Data;

/**
 * @author 何佳琦
 * @version 1.0.0
 */
@Data
public class Response implements Serializable {

    private boolean success;
    private String requestId;
    private long serverTime;
    private int code;
    private String msg;
    private Object data;

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
}
