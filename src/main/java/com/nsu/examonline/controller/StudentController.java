package com.nsu.examonline.controller;


import com.nsu.examonline.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//将创建类的对象交给Spring处理
public class StudentController {
    @Autowired
    StudentService studentService;


     //后端主控制页面
    @RequestMapping("/index")
    public String  index(){
        return  "index";
    }

    //欢迎页面
    @RequestMapping("/welcome")
    public String  welcome(){
        return  "welcome";
    }

}
