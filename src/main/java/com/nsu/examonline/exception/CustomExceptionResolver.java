package com.nsu.examonline.exception;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

public class CustomExceptionResolver implements HandlerExceptionResolver {
    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
        //自定义异常对象，将异常信息统一交由该对象处理
        CustomException customException = null;
        if(e instanceof CustomException){
            customException = (CustomException)e;
        }else{
            customException = new CustomException(e.getMessage());
        }
        //异常信息
        String message = customException.getMessage();

        ModelAndView modelAndView = new ModelAndView();

        //将异常信息绑定到数据中
        modelAndView.addObject("message", message);
        modelAndView.addObject("e", Arrays.toString(customException.getStackTrace()));





        //指向错误页面
        modelAndView.setViewName("error");
        return modelAndView;
    }
}
