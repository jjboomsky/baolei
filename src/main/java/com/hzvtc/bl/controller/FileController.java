package com.hzvtc.bl.controller;

import com.hzvtc.bl.common.Assist;
import com.hzvtc.bl.common.JsonResult;
import com.hzvtc.bl.entity.Reach;
import com.hzvtc.bl.entity.Student;
import com.hzvtc.bl.entity.Teacher;
import com.hzvtc.bl.service.Impl.ReachServiceImpl;
import com.hzvtc.bl.service.Impl.StudentServiceImpl;
import com.hzvtc.bl.service.Impl.TeacherServiceImpl;
import com.hzvtc.bl.until.LayuiTableUntil;
import com.hzvtc.bl.until.MessageUntil;
import com.hzvtc.bl.until.SimpleMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by 鲍磊的学习机 on 2017/9/27.
 */

@RequestMapping("/teacher")
@Controller
public class FileController extends ZhuController{

    @Autowired
    private StudentServiceImpl studentServiceImol;
    @Autowired
    private ReachServiceImpl reachServiceImol;
    @Autowired
    private TeacherServiceImpl teacherServiceImol;

    /*@RequestMapping("/teacher/{id}")
    public String hello(@PathVariable Integer id,Model model) {
        if((int)id!=0){
            Teacher teacher=teacherServiceImol.selectTeacherById(id);
            model.addAttribute("teacher",teacher);
            return "teacher";
        }
        else {
            model.addAttribute("teaId",(int)id);
            return "error";
        }
    }*/

    @RequestMapping(value = "/logout")
    public String logout(HttpSession httpSession) {
        Teacher teacher = (Teacher) httpSession.getAttribute("teacher");
        if(null != teacher) {
            httpSession.removeAttribute("teacher");
        }
        return "redirect:/";
    }





    @ResponseBody
    @RequestMapping("getstudent/{id}")
    public Student getuser(@PathVariable Integer id) {
        Student user = studentServiceImol.selectStudentById(id);
        return user;
    }



    /**
     * 得到学生
     */
    @ResponseBody
    @RequestMapping("/getall")
    public MessageUntil getall(LayuiTableUntil data) {
        Assist assist = new Assist();
        assist.setRowSize(data.getLimit());
        assist.setStartRow((data.getPage() - 1) * data.getLimit());
        String likename="%"+data.getsName()+"%";
        if(data.getsName()==null){
            likename="%"+"%";
        }
        assist.setRequires(Assist.andLike("s_name",likename));
        List list = studentServiceImol.selectStudent(assist);
        assist = new Assist();
        assist.setRequires(Assist.andLike("s_name",likename));
        long count = studentServiceImol.getStudentRowCount(assist);
        MessageUntil msg = new MessageUntil(0, "", (int) count, list);
        return msg;
    }


    /**
     * 得到详情页面
     */
    @RequestMapping("/getDetails")
    public String getDetails(@RequestParam(value = "ids[]") int[] Ids, Model model) {
        Student student = studentServiceImol.selectStudentById(Ids[0]);
        model.addAttribute("student", student);
        return "Details";
    }




    /**
     * 设置学生旷课
     * @param Ids   迟到学生的ID数组
     * @return
     */
    @ResponseBody
    @RequestMapping("stuNoReach/{rtype}/{tid}")
    public SimpleMessage makeStuNoReach(@PathVariable String rtype,@RequestParam(value = "ids[]") int[] Ids,@PathVariable Integer tid) {
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd:HH:mm");
        String dateNowStr = sdf.format(d);
        System.out.println("迟到的日期：" + dateNowStr);
        List<Reach> list = new ArrayList();
        for (int id : Ids) {
            Reach reach = new Reach();
            reach.setRSid(id);
            reach.setRNoreachtime(dateNowStr.toString());
            reach.setRTid((int)tid);
            reach.setRType(rtype);
            reach.setRCid(1);
            System.out.println(id);
            list.add(reach);
        }
        SimpleMessage message=null;
        for (Reach reach : list) {
            System.out.println(reach.getRNoreachtime());
        }
        int code = reachServiceImol.insertReachByBatch(list);
        System.out.println("数量:"+code);
        if (code > 0) {
             message = new SimpleMessage(0, "考勤成功");
        }else{
             message = new SimpleMessage(0, "考勤失败");
        }
        return message;

    }




    /**
     * 删除学生
     */
    @ResponseBody
    @RequestMapping("delStuByBatch")
    public SimpleMessage delStuByBatch(@RequestParam(value = "ids[]") int[] Ids){
        int code=studentServiceImol.deleteStudentByBatch(Ids);
        SimpleMessage message=null;
        if (code > 0) {
            message = new SimpleMessage(code, "删除成功");
        }else{
            message = new SimpleMessage(0, "删除失败");
        }
        return message;
    }










}
