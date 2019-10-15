package com.nsu.examonline.controller;

import com.nsu.examonline.mapper.Question_addMapper;
import com.nsu.examonline.pojo.Question_add;
import com.nsu.examonline.pojo.RandomTest;
import com.nsu.examonline.util.JsonResult;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Reader;
import java.util.List;

@Controller
public class RandomTestController {
    /**
     * 随机组卷的方法
     */
    @RequestMapping("/randomtest_add")
    public  String randomtest(){

        return  "randomtest_add";
    }

//试题添加的方法
    @RequestMapping("/randomTest/action")
    @ResponseBody
    public JsonResult<RandomTest> addAction(RandomTest randomTest, HttpServletRequest request,HttpServletResponse response) throws IOException {

        //1 . 加载SqlMapConfig.xml配置文件
        Reader resourceAsReader = Resources.getResourceAsReader("config/mybatis/SqlMapConfig.xml");

        //2 .创建一个session工厂创建器SqlSessionFactoryBuilder
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();

        //3 . 通过build方法得到一个SqlSessionFactory对象
        // java有23种设计模式， 此处使用了工厂模式
        SqlSessionFactory factory = builder.build(resourceAsReader, "development");

        //4. 通过工厂得到Session对象
        SqlSession sqlSession = factory.openSession();

        /**
         * 题库的数据的在控制台测试
         */
       Question_addMapper mapper = sqlSession.getMapper(Question_addMapper.class);
       /*  List<Question_add> question_adds =  mapper.save();
        for (Question_add question : question_adds) {
            System.out.println(question);

        }*/
//        根据科目查询
        List<Question_add> javaweb = mapper.select("javaweb");
        for (Question_add web : javaweb) {
            System.out.println(web);

        }

        System.out.println(randomTest);
        return  new JsonResult<>(200,"success",randomTest);
    }

}
