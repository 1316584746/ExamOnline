package com.nsu.examonline.interceptor;



/*import com.nsu.examonline.util.ReqireLogin;
import com.nsu.examonline.util.UserContext;*/
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//设计一个拦截器,只需要继承HandlerInterceptorAdapter拦截器的适配器
public class LoginInterceptor extends HandlerInterceptorAdapter {

    //重写preHandle 方法,表示方法在执行前拦截并处理和引导
    //request和response是标准的web操作请求和响应对象
    //handler是执行者(方法)对象
    //返回值表示是否放行,如果返回false表示拦截

 /*   @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //判断是否拦截:注解状态和登录状态
        //handler判断是否是方法的句柄HandlerMethod,表示本身
        //将handler转换成HandlerMethod,为了得到方法上的状态信息
        if (handler instanceof HandlerMethod) {
            //通过getMethodAnnotation反射得到方法中声明的注解,有没有
            //如果方法咩有声明返回null,声明返回该注解对象
            ReqireLogin methodAnnotation = ((HandlerMethod) handler).getMethodAnnotation(ReqireLogin.class);

            //设定条件:注解状态和登录状态
            //判断该方法是一个需要登录的方法,切该方法执行期间用户还没有登录
            if (methodAnnotation != null && UserContext.getCurrent() == null) {
                //引导并拦截
                response.sendRedirect("/login.html");
                return false;
            }


        }


        return super.preHandle(request, response, handler);
    }*/
}
