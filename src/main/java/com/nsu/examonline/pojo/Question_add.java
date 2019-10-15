package com.nsu.examonline.pojo;

import java.io.Serializable;

public class Question_add  implements Serializable {
    private  String  test_sub;//试题科目
    private  Integer test_num;//试题编号
    private  String test_que;//试题问题
    private  String  test_ans;//试题答案
    private   String state;//难易程度
    private  Integer score;//题分数设置
    private  String test_xuan;//试题的选项

    public String getTest_sub() {
        return test_sub;
    }

    public void setTest_sub(String test_sub) {
        this.test_sub = test_sub;
    }

    public Integer getTest_num() {
        return test_num;
    }

    public void setTest_num(Integer test_num) {
        this.test_num = test_num;
    }

    public String getTest_que() {
        return test_que;
    }

    public void setTest_que(String test_que) {
        this.test_que = test_que;
    }

    public String getTest_ans() {
        return test_ans;
    }

    public void setTest_ans(String test_ans) {
        this.test_ans = test_ans;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getTest_xuan() {
        return test_xuan;
    }

    public void setTest_xuan(String test_xuan) {
        this.test_xuan = test_xuan;
    }

    @Override
    public String toString() {
        return "Question_add{" +
                "test_sub='" + test_sub + '\'' +
                ", test_num=" + test_num +
                ", test_que='" + test_que + '\'' +
                ", test_ans='" + test_ans + '\'' +
                ", state='" + state + '\'' +
                ", score=" + score +
                ", test_xuan='" + test_xuan + '\'' +
                '}';
    }
}
