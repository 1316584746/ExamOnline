package com.nsu.examonline.service.impl;

import com.nsu.examonline.mapper.RandomTestMapper;
import com.nsu.examonline.pojo.RandomTest;
import com.nsu.examonline.service.RandomTestService;
import com.nsu.examonline.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

public class RandomTestServiceimpl  implements RandomTestService {

    @Autowired
    private RandomTestMapper randomTestMapper;


    @Override
    public List<RandomTest> add(RandomTest randomTest) {
       randomTest.setSubject_Id(1);

        return null;
    }

    /**
     * 随机试卷的添加
     * @param randomTest
     * @param request
     * @return
     */
    @Override
    public JsonResult<RandomTest> addtest(RandomTest randomTest, HttpSession request) {
        System.out.println(randomTest);
        RandomTest randomTest1=new RandomTest();


        return null;
    }


    @Override
    public Integer addpaper(RandomTest randomTest) {

        return  randomTestMapper.save(randomTest);

    }
}
