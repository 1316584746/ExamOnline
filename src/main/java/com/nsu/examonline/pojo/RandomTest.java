package com.nsu.examonline.pojo;

import javax.xml.soap.Text;
import java.io.Serializable;

/**
 * 创建试卷表的实体
 */
public class RandomTest  implements Serializable {
     private  Integer Test_Id;
     private  Integer Type_id;
     private  Integer Subject_Id;
     private   Integer   Test_Score;
     private   String   Test_Answer;
     private   String  Test_Question;

    public Integer getTest_Id() {
        return Test_Id;
    }

    public void setTest_Id(Integer test_Id) {
        Test_Id = test_Id;
    }

    public Integer getType_id() {
        return Type_id;
    }

    public void setType_id(Integer type_id) {
        Type_id = type_id;
    }

    public Integer getSubject_Id() {
        return Subject_Id;
    }

    public void setSubject_Id(Integer subject_Id) {
        Subject_Id = subject_Id;
    }

    public Integer getTest_Score() {
        return Test_Score;
    }

    public void setTest_Score(Integer test_Score) {
        Test_Score = test_Score;
    }

    public String getTest_Answer() {
        return Test_Answer;
    }

    public void setTest_Answer(String test_Answer) {
        Test_Answer = test_Answer;
    }

    public String getTest_Question() {
        return Test_Question;
    }

    public void setTest_Question(String test_Question) {
        Test_Question = test_Question;
    }



    @Override
    public String toString() {
        return "RandomTestMapper{" +
                "Test_Id=" + Test_Id +
                ", Type_id=" + Type_id +
                ", Subject_Id=" + Subject_Id +
                ", Test_Score=" + Test_Score +
                ", Test_Answer='" + Test_Answer + '\'' +
                ", Test_Question='" + Test_Question + '\'' +
                '}';
    }
}
