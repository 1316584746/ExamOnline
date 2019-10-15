package com.nsu.examonline.mapper;


import com.nsu.examonline.pojo.Question_add;

import java.util.List;

public interface Question_addMapper {
    //插入试题
   Integer save(Question_add question_add);


   //查询试题
   List<Question_add>  select(String test_sub);



    /**
     * 查询全部试题
     */

    List<Question_add>  list(Question_add question_add);
}

