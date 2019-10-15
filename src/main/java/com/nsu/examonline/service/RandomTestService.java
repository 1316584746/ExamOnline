package com.nsu.examonline.service;

import com.nsu.examonline.pojo.Question_add;
import com.nsu.examonline.pojo.RandomTest;
import com.nsu.examonline.util.JsonResult;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface RandomTestService {
    //将获得试卷存入集合放在对象randomTest中
     List<RandomTest>  add(RandomTest randomTest );

    JsonResult<RandomTest>  addtest(RandomTest randomTest, HttpSession request);


    /**
     * 生成一份试卷
     */
    Integer addpaper(RandomTest randomTest);



}
