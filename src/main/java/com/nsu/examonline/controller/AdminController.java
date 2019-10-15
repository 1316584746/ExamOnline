package com.nsu.examonline.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

    //开课管理
    @RequestMapping("/admin/InformationManagement/Ocourse")
    public  String Ocourse(){
        return  "/admin/InformationManagement/Ocourse";
    }
    //课程管理
    @RequestMapping("/admin/InformationManagement/course")
    public  String course(){
        return  "/admin/InformationManagement/course";
    }
  //系部管理
    @RequestMapping("/admin/InformationManagement/department")
    public  String department(){
        return  "/admin/InformationManagement/department";
    }
    //教师管理
    @RequestMapping("/admin/InformationManagement/teacher")
    public String teacher(){
        return "/admin/InformationManagement/teacher";
    }

    //行政班管理
    @RequestMapping("/admin/InformationManagement/Eclass")
    public String Eclass(){
        return "/admin/InformationManagement/Eclass";
    }
    //专业管理
    @RequestMapping("/admin/InformationManagement/profession")
    public String profession(){
        return "/admin/InformationManagement/profession";
    }
    //选课管理
    @RequestMapping("/admin/InformationManagement/Scourse")
    public String Scourse(){
        return "/admin/InformationManagement/Scourse";
    }
    //学期学年管理
    @RequestMapping("/admin/InformationManagement/semester")
    public String semester(){
        return "/admin/InformationManagement/semester";
    }
    //学生管理
    @RequestMapping("/admin/InformationManagement/student")
    public String student(){
        return "/admin/InformationManagement/student";
    }
    //教学班管理
    @RequestMapping("/admin/InformationManagement/Tclass")
    public String Tclass(){
        return "/admin/InformationManagement/Tclass";
    }
/**
 * 权限管理
 */
//职位管理-添加职位
    @RequestMapping("/admin/Authority Management/Root/root_add")
    public String root_add(){
        return "/admin/Authority Management/Root/root_add";
    }
    //职位管理
    @RequestMapping("/admin/Authority Management/RolesList")
    public String RolesList(){
        return "/admin/Authority Management/RolesList";
    }
    //职位管理-超级管理员详情
    @RequestMapping("/admin/Authority Management/Root/RootDetail")
    public String RootDetail(){
        return "/admin/Authority Management/Root/RootDetail";
    }
    //职位管理-超级管理员权限配置
    @RequestMapping("/admin/Authority Management/Root/RootPredom")
    public String  RootPredom(){
        return "/admin/Authority Management/Root/RootPredom";
    }
    //职位管理-超级管理员修改
    @RequestMapping("/admin/RolesManage/modify")
    public String  modify2(){
        return "/admin/RolesManage/modify";
    }

    //职位管理-系部主任详情
    @RequestMapping("/admin/Authority Management/Department/DepartmentDetail")
    public String  DepartmentDetail(){
        return "/admin/Authority Management/Department/DepartmentDetail";
    }
    //职位管理-系部主任权限配置
    @RequestMapping("/admin/Authority Management/Department/DepartmentPredom")
    public String  DepartmentPredom(){
        return "/admin/Authority Management/Department/DepartmentPredom";
    }

    //职位管理-系教师详情
    @RequestMapping("/admin/Authority Management/Teacher/TeacherDetail")
    public String  TeacherDetail(){
        return "/admin/Authority Management/Teacher/TeacherDetail";
    }
    //职位管理-系教师权限配置
    @RequestMapping("/admin/Authority Management/Teacher/TeacherPredom")
    public String  TeacherPredom(){
        return "/admin/Authority Management/Teacher/TeacherPredom";
    }
    //职位管理-学生详情
    @RequestMapping("/admin/Authority Management/Student/StudentDetail")
    public String  StudentDetail(){
        return "/admin/Authority Management/Student/StudentDetail";
    }
    //职位管理-学生权限配置
    @RequestMapping("/admin/Authority Management/Student/StudentPredom")
    public String  StudentPredom(){
        return "/admin/Authority Management/Student/StudentPredom";
    }


    //功能管理
    @RequestMapping("/admin/Authority Management/Functionlist")
    public String Functionlist(){
        return "/admin/Authority Management/Functionlist";
    }
    //功能管理-修改功能
    @RequestMapping("/admin/FunctionsManage/modify")
    public String modfiy(){
        return "/admin/FunctionsManage/modify";
    }
    //功能管理-禁用功能
    @RequestMapping("/admin/FunctionsManage/success")
    public String success(){
        return "/admin/FunctionsManage/success";
    }
    //功能管理-学年详情
    @RequestMapping("/admin/FunctionsManage/Years/YearsDetail")
    public String YearsDetail(){
        return "/admin/FunctionsManage/Years/YearsDetail";
    }
    //功能管理-学年权限配置
    @RequestMapping("/admin/FunctionsManage/Years/YearsPredom")
    public String YearsPredom(){
        return "/admin/FunctionsManage/Years/YearsPredom";
    }
    //功能管理-教师详情
    @RequestMapping("/admin/FunctionsManage/Teacher/TeacherDetail")
    public String TeacherDetail2(){
        return "/admin/FunctionsManage/Teacher/TeacherDetail";
    }
    //功能管理-教师权限配置
    @RequestMapping("/admin/FunctionsManage/Teacher/TeacherPredom")
    public String TeacherPredom2(){
        return "/admin/FunctionsManage/Teacher/TeacherPredom";
    }
    //功能管理-学生详情
    @RequestMapping("/admin/FunctionsManage/Student/StudentDetail")
    public String StudentDetail2(){
        return "/admin/FunctionsManage/Student/StudentDetail";
    }
    //功能管理-学生权限配置
    @RequestMapping("/admin/FunctionsManage/Student/StudentPredom")
    public String StudentPredom2(){
        return "/admin/FunctionsManage/Student/StudentPredom";
    }
    //功能管理-课程详情
    @RequestMapping("/admin/FunctionsManage/Course/CourseDetail")
    public String CourseDetail2(){
        return "/admin/FunctionsManage/Course/CourseDetail";
    }
    //功能管理-课程权限配置
    @RequestMapping("/admin/FunctionsManage/Course/CoursePredom")
    public String CoursePredom2(){
        return "/admin/FunctionsManage/Course/CoursePredom";
    }
    //功能管理-专业详情
    @RequestMapping("/admin/FunctionsManage/Major/MajorDetail")
    public String MajorDetail2(){
        return "/admin/FunctionsManage/Major/MajorDetail";
    }
    //功能管理-专业权限配置
    @RequestMapping("/admin/FunctionsManage/Major/MajorPredom")
    public String MajorPredom2(){
        return "/admin/FunctionsManage/Major/MajorPredom";
    }
    //功能管理-行政班详情
    @RequestMapping("/admin/FunctionsManage/PoliticalClass/PoliticalClassDetail")
    public String PoliticalClassDetail2(){
        return "/admin/FunctionsManage/PoliticalClass/PoliticalClassDetail";
    }
    //功能管理-行政班权限配置
    @RequestMapping("/admin/FunctionsManage/PoliticalClass/PoliticalClassPredom")
    public String PoliticalClassPredom2(){
        return "/admin/FunctionsManage/PoliticalClass/PoliticalClassPredom";
    }
    //功能管理-开课详情
    @RequestMapping("/admin/FunctionsManage/Begin/BeginDetail")
    public String BeginDetail2(){
        return "/admin/FunctionsManage/Begin/BeginDetail";
    }
    //功能管理-开课权限配置
    @RequestMapping("/admin/FunctionsManage/Begin/BeginPredom")
    public String BeginPredom2(){
        return "/admin/FunctionsManage/Begin/BeginPredom";
    }
    //功能管理-选课详情
    @RequestMapping("/admin/FunctionsManage/SCourse/SCourseDetail")
    public String SCourseDetail2(){
        return "/admin/FunctionsManage/SCourse/SCourseDetail";
    }
    //功能管理-开课权限配置
    @RequestMapping("/admin/FunctionsManage/SCourse/SCoursePredom")
    public String SCoursePredom2(){
        return "/admin/FunctionsManage/SCourse/SCoursePredom";
    }
    //功能管理-系部管理功能详情
    @RequestMapping("/admin/FunctionsManage/Department/DepartmentDetail")
    public String DepartmentDetail2(){
        return "/admin/FunctionsManage/Department/DepartmentDetail";
    }
    //功能管理-系部管理功能权限配置
    @RequestMapping("/admin/FunctionsManage/Department/DepartmentPredom")
    public String DepartmentPredom2(){
        return "/admin/FunctionsManage/Department/DepartmentPredom";
    }





    /**
 * 题库管理
 */
//单元管理
@RequestMapping("/admin/QuestionBankManage/unit")
public String unit(){
    return "/admin/QuestionBankManage/unit";
}
    //题型管理
    @RequestMapping("/admin/QuestionBankManage/QuestionTypes")
    public String QuestionTypes(){
        return "/admin/QuestionBankManage/QuestionTypes";
    }
    //试题管理
    @RequestMapping("/admin/QuestionBankManage/test")
    public String test(){
        return "/admin/QuestionBankManage/test";
    }
    //试题管理 修改功能
    @RequestMapping("/admin/QuestionBankManage/modify")
    public String modify(){
        return "/admin/QuestionBankManage/modify";
    }



}
