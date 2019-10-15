package com.nsu.examonline.mapper;

import com.nsu.examonline.pojo.Student;

import java.util.List;

//创建StudentsMApper的接口方法
//完成持久化的操作
public interface StudentMapper {

     List<Student> select();

     Student selectByname(String name);

     Integer insert(Student newStudent);

     Integer deleteStudent(Integer stu_id);

     Student update();



}
