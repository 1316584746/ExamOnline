package com.nsu.examonline.test;

import com.nsu.examonline.mapper.Question_addMapper;
import com.nsu.examonline.mapper.StudentMapper;
import com.nsu.examonline.pojo.Question_add;
import com.nsu.examonline.pojo.Student;
import com.nsu.examonline.util.MD5Creater;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

public class MyBatisDemo {

    public static void main(String[] args) throws IOException {
        //1 . 加载SqlMapConfig.xml配置文件
        Reader resourceAsReader = Resources.getResourceAsReader("config/mybatis/SqlMapConfig.xml");

        //2 .创建一个session工厂创建器SqlSessionFactoryBuilder
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();

        //3 . 通过build方法得到一个SqlSessionFactory对象
        // java有23种设计模式， 此处使用了工厂模式
        SqlSessionFactory factory = builder.build(resourceAsReader, "development");

        //4. 通过工厂得到Session对象
        SqlSession sqlSession = factory.openSession();

        // Session : 会话，和数据库的交互方法（不同于Servlet中的session）
        // UserMapper接口的实现类就被创建了（反射+泛型）
       //StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);

        //利用接口对象调用操作
        /*List<User> users = mapper.selectAll();

        for (User user : users) {
            System.out.println(user);
        }*/

        /*根据指定的编号查询Student

        List<Student> student = mapper.select();
        System.out.println(student);

//        注意 ，执行增删改时要增加一步： commit  , 删除和修改也需要这一步
        // 创建一个新对象,用于添加
        Student newStudent = new Student();
        newStudent.setStu_name("admin2");
        newStudent.setPassword(MD5Creater.encode("123456"));
        Integer insert = mapper.insert(newStudent);
        sqlSession.commit();  // 事务的提交

        //删除操作
        Integer integer = mapper.deleteStudent(3);
        sqlSession.commit();


        // 查询出一个用户 , 并修改它的特征
       /* User updateUser = mapper.selectById(5);
        updateUser.setUsername("abc");
        updateUser.setPwd("111111");
        User newUser2 = mapper.updateUser(updateUser);
        sqlSession.commit();  // 事务的提交*/

      //  sqlSession.close();  // 关闭session,回收资源

        /**
         * 题库的数据的在控制台测试
         */
        Question_addMapper mapper = sqlSession.getMapper(Question_addMapper.class);


       /* //调用操作方法
        List<Question_add> question_adds = mapper.selectByNum();
        for (Question_add question : question_adds) {
            System.out.println(question);

        }*/
//        根据科目查询
        List<Question_add> javaweb = mapper.select("javaweb");
        for (Question_add web : javaweb) {
            System.out.println(web);

        }


    }
}
