package com.nsu.examonline.service.impl;


import com.nsu.examonline.mapper.Question_addMapper;
import com.nsu.examonline.pojo.Question_add;
import com.nsu.examonline.service.Question_addService;
import com.nsu.examonline.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;


import javax.servlet.http.HttpSession;

public class Question_addServiceimpl implements Question_addService {
        @Autowired
         private  Question_addMapper question_addMapper;

    @Override
    public Question_add seleByNum(Question_add question_add) {

        return null;
    }

    //试题添加
    @Override
    public JsonResult<Question_add> add_test(Question_add question_add , HttpSession request,String test_ans) {
        Question_add question_add1=new Question_add();
          question_add1.getState();


        return null;
    }

    @Override
    public JsonResult<Question_add> add(Question_add question_add) {

        question_add.setScore(50);

        return null;
    }


}
