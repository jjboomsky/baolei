package com.hzvtc.bl.controller;

import com.hzvtc.bl.entity.Student;
import com.hzvtc.bl.entity.Teacher;
import com.hzvtc.bl.service.Impl.CourseServiceImpl;
import com.hzvtc.bl.service.Impl.ReachServiceImpl;
import com.hzvtc.bl.service.Impl.StudentServiceImpl;
import com.hzvtc.bl.service.Impl.TeacherServiceImpl;
import com.hzvtc.bl.until.SimpleMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by 鲍磊的学习机 on 2017/12/4.
 */
@Controller
@RequestMapping("/login")
public class BaseController {


    @Autowired
    private TeacherServiceImpl teacherServiceImol;
    @Autowired
    private CourseServiceImpl courseServiceImpl;
    @Autowired
    private StudentServiceImpl studentServiceImol;

    @Autowired
    private ReachServiceImpl reachServiceImol;


/*    @RequestMapping("/")
    public String getindex(){
        return "/index.html";
    }*/


    @RequestMapping("/tea_login")
    public String stuLogin(String username, String password, Model model, HttpServletResponse response, HttpServletRequest request) {
        Teacher teacher = new Teacher();
        teacher.setTTeacherid(username);
        teacher.setTPassword(password);
        Teacher ter = teacherServiceImol.selectTeacherByObj(teacher);
        if (null != ter) {
            model.addAttribute("teacher",ter);
            return "forward:/teacher/teacher.jsp";
        } else {
            /*Cookie cookie=new Cookie("msg","用户名或密码错误！");
            response.addCookie(cookie);*/
            return "Erro";
        }

    }
    @RequestMapping("/stu_login")
    public String stulogin(String username, String password, Model model, HttpServletResponse response, HttpServletRequest request) {
        Student student = new Student();
        student.setSSchoolid(Integer.parseInt(username));
        student.setSPassword(password);
        Student stu = studentServiceImol.selectStudentByObj(student);
        if (null != stu) {
            List list=reachServiceImol.selectStuReachByStuId(stu.getSId());
            model.addAttribute("student",stu);
            model.addAttribute("list",list);
            return "forward:/teacher/studentIndex.jsp";
        } else {
            /*Cookie cookie=new Cookie("msg","用户名或密码错误！");
            response.addCookie(cookie);*/
            return "Erro";
        }

    }
}
