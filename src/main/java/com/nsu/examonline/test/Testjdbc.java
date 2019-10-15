package com.nsu.examonline.test;

import com.nsu.examonline.pojo.Student;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.sql.*;


import java.util.ArrayList;
import java.util.List;

public class Testjdbc {
    //声明连接对象
    // 执行sql   executeQuery 执行查询操作   executeUpdate 执行增删改
    Connection conn=null;
    @Before
    //他会在别的Test测试方法之前先运行;
    public  void TestConnection() throws SQLException {
//        配置jdbc的连接地址和连接用户名和用户密码
        String url="jdbc:mysql://localhost:3306/examonline?characterEncoding=UTF-8&useSSL=false";
        String name="root";
        String password="";
         conn= DriverManager.getConnection(url,name,password);
        System.out.println("恭喜数据库连接成功");
        System.out.println(conn);
    }
@Test
//   数据库连接准备状态
  public  void TestPrepareedStatement() throws SQLException {
        //连接对象获得预编译语句对象操作
      //String sql="insert into students(stu_id,stu_name,password)values(456789,'王五','456789')";
  // 占位符的sql语句
      String sql="insert into students(stu_id,stu_name,password,stu_sex) values(?,?,?,?)";
      PreparedStatement preparedStatement=conn.prepareStatement(sql);
   //给占位符? 赋值
    preparedStatement.setInt(1,11);
      preparedStatement.setString(2,"小小");
      preparedStatement.setString(3,"678238");
    preparedStatement.setString(4,"女");
      //执行sql语句
      int lines = preparedStatement.executeUpdate();
     //输出增加的行数
      System.out.println(lines);
  }

  @Test
  //数据库的删除操作;
    public  void Delete() throws SQLException {
        String sql="delete from Students where stu_id=4";
     PreparedStatement preparedStatement=conn.prepareStatement(sql);
      int i = preparedStatement.executeUpdate();
      System.out.println(i);
  }

  //数据库的查询操作
   @Test
   public  void select() {
        //创建数组对象,存储表中去除的数据
       List<Student> students=new ArrayList<>();
        String sql="select stu_id,stu_name,password from students";
      try {
           PreparedStatement preparedStatement=conn.prepareStatement(sql);
           //返回结果集对象;
           System.out.println(preparedStatement);
           ResultSet resultSet = preparedStatement.executeQuery();
           //通过结果集对象获取游标状态
           while (resultSet.next()){

               // 通过字段名获取相应的值
               int stu_id=resultSet.getInt(1);
               String stu_name=resultSet.getString(2);
               String password=resultSet.getString(3);

/*  System.out.println("stuid:"+stu_id);
               System.out.println("stuname:"+stu_name);
               System.out.println("password:"+password);
               System.out.println("-------------------");*/

             //  创建一个学生对象,将查到得的值封装到Student中
               Student student=new Student();
               student.setPassword(password);
               student.setStu_id(stu_id);
               student.setStu_name(stu_name);
               students.add(student);
           }

       } catch (SQLException e) {
           e.printStackTrace();
       }
       for (Student student : students) {
           System.out.println(student);
       }
   }

    @After
    public void close(){
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
}
}
