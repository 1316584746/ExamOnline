package com.nsu.examonline.controller;



import com.nsu.examonline.pojo.Question_add;
import com.nsu.examonline.pojo.Student;
import com.nsu.examonline.service.Question_addService;
import com.nsu.examonline.service.StudentService;
import com.nsu.examonline.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

;import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    private StudentService studentService;
    private Question_addService question_addService;
    //    登录界面
    @RequestMapping("/login")
   public  String login(){
        return  "login";
    }

    /**
     * 登陆的方法
     * @return
     */
    @RequestMapping("/login/action")
    @ResponseBody
  public JsonResult<Student> loginpage(Student student ,HttpServletRequest request){

     return studentService.login(student,request);
    }

    /**
     * 退出登录
     * @param request
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
//        清空session的值
//    1.现获取session的值
        HttpSession session=request.getSession();
//        2.将session的数据置空
    session.setAttribute("login",null);
    return  "login";
    }

    /**
     * 随机组卷
     * @return
     */
    @RequestMapping("/randomtest")
    public  String randomtest(){
        return  "randomtest";
    }


    /**
     * 试题添加的页面
     * @return
     */
    @RequestMapping("/question_add")
    public  String add(){
        return  "question_add";
    }

    //试题添加的方法
    @RequestMapping("/question_add/action")
    @ResponseBody
     public  JsonResult<Question_add> addAction(Question_add question_add){
        System.out.println(question_add);
        return  question_addService.add(question_add);

    }


/**
 * 考试管理
 */

@RequestMapping("/exam")
public  String exam(){
    return "exam";
}

    /**
     * 系部添加的页面
     * @return
     */
    @RequestMapping("/information_add")
    public  String info_add(){
        return  "question_add";
    }


    }

