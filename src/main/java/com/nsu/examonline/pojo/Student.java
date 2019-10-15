package com.nsu.examonline.pojo;
/**
 * 创建学生数据库的实体类
 */

import java.io.Serializable;
//加入序列化标记
public class Student  implements Serializable {
     private  Integer stu_id;
     private  String stu_name;
     private  String  password;
     private   String stu_sex;

    public Integer getStu_id() {
        return stu_id;
    }

    public void setStu_id(Integer stu_id) {
        this.stu_id = stu_id;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStu_sex() {
        return stu_sex;
    }

    public void setStu_sex(String stu_sex) {
        this.stu_sex = stu_sex;
    }

    @Override
    //用于调试使用
    public String toString() {
        return "Student{" +
                "stu_id=" + stu_id +
                ", stu_name='" + stu_name + '\'' +
                ", password='" + password + '\'' +
                ", stu_sex='" + stu_sex + '\'' +
                '}';
    }
}
