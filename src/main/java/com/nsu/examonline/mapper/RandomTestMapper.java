package com.nsu.examonline.mapper;


import com.nsu.examonline.pojo.RandomTest;

public interface RandomTestMapper {


    //将随机产生的试卷进行存储
     Integer save(RandomTest randomTest);

}

