package com.nsu.examonline.util;


import lombok.Getter;
import lombok.Setter;

/**
 * code:为当前的状态的状态码
 * msg:提示信息
 * data:前后端传输的数据
 * @param <T>
 */
//通过spring自动获得get,set方法;
@Getter
@Setter
public class JsonResult<T> {
     private  Integer code;
     private  String msg;
     private  T  data;//返还给前端的数据


    public JsonResult() {

    }



    public  JsonResult(Integer code, String msg){
            this.code=code;
            this.msg=msg;
    }

    public JsonResult(Integer code, String msg, T data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
