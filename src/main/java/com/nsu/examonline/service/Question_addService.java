package com.nsu.examonline.service;

import com.nsu.examonline.pojo.Question_add;
import com.nsu.examonline.util.JsonResult;

import javax.servlet.http.HttpSession;

/**
 * 添加试题的方法
 */
public interface Question_addService {
    //题库试题的查询
      Question_add  seleByNum(Question_add question_add);

      JsonResult<Question_add> add_test(Question_add question_add, HttpSession request,String test_ans);

    /**
     * 添加试题的方法
     * @param question_add
     * @return
     */
      JsonResult<Question_add> add(Question_add question_add);


}