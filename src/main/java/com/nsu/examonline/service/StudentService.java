package com.nsu.examonline.service;

import com.nsu.examonline.pojo.Student;
import com.nsu.examonline.util.JsonResult;
import org.apache.ibatis.annotations.Select;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface StudentService {

      Student selectByname(Student student);
//      //登录操作
//      Student login(String  stu_name,String password);
//      //检验用户是否存在
//    boolean checkStudent(String stu_name);

    /**
     * 登录的方法
     * @param student
     * @return
     */
     JsonResult<Student> login(Student student, HttpServletRequest request);
}
