package com.nsu.examonline.service.impl;

import com.nsu.examonline.mapper.StudentMapper;
import com.nsu.examonline.pojo.Student;
import com.nsu.examonline.service.StudentService;
import com.nsu.examonline.util.JsonResult;
import com.nsu.examonline.util.MD5Creater;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service//告诉Spring,如果需要创建studentservicede 的bean的时候,就会帮用户自己创建
public class StudentServiceimpl  implements StudentService {
    /*自动在Spring的容器中创建并得到StudentMapper的实例   */
        @Autowired
         private  StudentMapper studentMapper;


    @Override
    public Student selectByname(Student student) {

       return null;
    }


  /**
     * 登陆的方法
     * 黄老师的登录方法
     * @param student
     * @return
     */

   @Override
    public JsonResult<Student> login(Student student,HttpServletRequest request) {

        if(student == null){
            return new JsonResult<>(1001,"登录数据有错");
        }
        // 验证 用户名
        if(student.getStu_name() == null ){
            return new JsonResult<>(1002,"用户名数据错误!");
        }
        // 通过Dao去查询数据库
        Student student1 = studentMapper.selectByname(student.getStu_name());
      // System.out.println("密码2:"+student1.getPassword());
        // 验证是否有该员工
        if (student==null) {
            return new JsonResult<>(1003,"该学生不存在!");
        }
        // 比对密码
        if(!student1.getPassword().equals(MD5Creater.encode(student.getPassword()))){
            //System.out.println("密码3:"+MD5Creater.encode(student.getPassword()));
            return new JsonResult<>(1004,"密码错误!");
        }
//      保存登录成功的session的数据
//        1.获取session的值
       HttpSession session=request.getSession();
//        2.将成功登录的用户信息存入session中
       session.setAttribute("login",student1);


        return new JsonResult<>(200,"登陆成功!");
    }
    }

