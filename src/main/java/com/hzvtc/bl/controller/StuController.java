package com.hzvtc.bl.controller;

import com.hzvtc.bl.common.Assist;
import com.hzvtc.bl.common.JsonResult;
import com.hzvtc.bl.entity.Honor;
import com.hzvtc.bl.entity.Student;
import com.hzvtc.bl.service.Impl.HonorServiceImpl;
import com.hzvtc.bl.service.Impl.StudentServiceImpl;
import com.hzvtc.bl.until.LayuiTableUntil;
import com.hzvtc.bl.until.MessageUntil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by 鲍磊的学习机 on 2017/12/21.
 */

@Controller
@RequestMapping("/student")
public class StuController extends ZhuController{


    @Autowired
    private StudentServiceImpl studentServiceImol;

    @Autowired
    private HonorServiceImpl honorServiceImpl;





    /*test 学生荣誉数据*/
    @ResponseBody
    @RequestMapping("/getStuHonor")
    public MessageUntil getTeaHonor(LayuiTableUntil data) {
        List list = studentServiceImol.selectStudentHonor();
        long count = studentServiceImol.getStudentRowCount(new Assist());
        MessageUntil msg = new MessageUntil(0, "", (int) count, list);
        return msg;
    }


    /*
    * 编辑荣誉页面
    * */
    @RequestMapping("/editHonor")
    public String editTeaHonor(Integer sId, Model model) {
        Honor honor = new Honor();
        Assist assist = new Assist();
        assist.setRequires(Assist.andEq("honor.sid", sId));
        List<Honor> honorlist = honorServiceImpl.selectHonor(assist);
        if (honorlist.size() > 0) {
            honor = honorlist.get(0);
            model.addAttribute("honor", honor);
            return "editHonor";
        } else {
            honor.setSid(sId);
            model.addAttribute("honor", honor);
            return "editHonor";
        }
    }




    /*
  * 荣誉更改
  * */
    @RequestMapping("/editStuHonor")
    public Object editStuHonor(Honor honor, Model model) {
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String dateNowStr = sdf.format(d);
        honor.setCreatdata(dateNowStr.toString());
        if (null != honor.getId()) {
            int code = honorServiceImpl.updateHonorById(honor);
            if (code > 0) {
                return renderSuccess("修改成功");
            } else {
                return renderError("修改失败");
            }
        }else{
            int code = honorServiceImpl.insertHonor(honor);
            if (code > 0) {
                return renderSuccess("添加成功");
            } else {
                return renderError("添加失败");
            }
        }
    }


    //添加学生
    @ResponseBody
    @RequestMapping("/addstudent")
    public Object addStudent(Student student){
        int a=studentServiceImol.insertStudent(student);
        if (a > 0) {
            return renderSuccess("添加成功");
        } else {
            return renderError("添加失败");
        }
    }

    /**
     * 设置学生页面
     */
    @RequestMapping("/getStuEdit")
    public String getStuEdit(Integer id, Model model) {
        Student student = studentServiceImol.selectStudentById(id);
        model.addAttribute("student", student);
        return "stuEdit";
    }

    //修改学生
    @ResponseBody
    @RequestMapping("/studentedit")
    public Object studentedit(Student student){
        int a=studentServiceImol.updateStudentById(student);
        if (a > 0) {
            return renderSuccess("修改成功");
        } else {
            return renderError("修改失败");
        }
    }

}
