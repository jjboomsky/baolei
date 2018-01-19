package com.hzvtc.bl.service.Impl;
import java.util.List;
import com.hzvtc.bl.dao.StudentDao;
import com.hzvtc.bl.entity.Student;
import com.hzvtc.bl.common.Assist;
import com.hzvtc.bl.entity.StudentHonorAndFalut;
import com.hzvtc.bl.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class StudentServiceImpl implements StudentService{
    @Autowired
    private StudentDao studentDao;
    @Override
    public long getStudentRowCount(Assist assist){
        return studentDao.getStudentRowCount(assist);
    }
    @Override
    public List<Student> selectStudent(Assist assist){
        return studentDao.selectStudent(assist);
    }
    @Override
    public Student selectStudentByObj(Student obj){
        return studentDao.selectStudentByObj(obj);
    }
    @Override
    public Student selectStudentById(Integer id){
        return studentDao.selectStudentById(id);
    }
    @Override
    public int insertNonEmptyStudent(Student value){
        return studentDao.insertNonEmptyStudent(value);
    }
    @Override
    public int insertStudentByBatch(List<Student> value){
        return studentDao.insertStudentByBatch(value);
    }
    @Override
    public int deleteStudentById(Integer id){
        return studentDao.deleteStudentById(id);
    }
    @Override
    public int deleteStudent(Assist assist){
        return studentDao.deleteStudent(assist);
    }
    @Override
    public int updateStudentById(Student enti){
        return studentDao.updateStudentById(enti);
    }
    @Override
    public int updateStudent(Student value, Assist assist){
        return studentDao.updateStudent(value,assist);
    }
    @Override
    public int updateNonEmptyStudentById(Student enti){
        return studentDao.updateNonEmptyStudentById(enti);
    }
    @Override
    public int updateNonEmptyStudent(Student value, Assist assist){
        return studentDao.updateNonEmptyStudent(value,assist);
    }

    public StudentDao getStudentDao() {
        return this.studentDao;
    }

    public void setStudentDao(StudentDao studentDao) {
        this.studentDao = studentDao;
    }

    //添加学生到数据库
    @Override
    public int insertStudent(Student value){
        int studentCount=studentDao.getStudentCount(value);
        if(studentCount!=0){
            int studentIdMax=studentDao.selectStudentMax(value);
            studentIdMax=studentIdMax+1;
            System.out.println(studentIdMax);
            value.setSSchoolid(studentIdMax);
        }else {
            String ftime=value.getSFirsttime();
            ftime= ftime.replace("-","");
            String idstr=ftime+value.getSClass()+"01";
            value.setSSchoolid(Integer.parseInt(idstr));
        }
        String password=value.getSIdnumber().substring(12,18);
        System.out.println(password);
        value.setSPassword(password);
        return studentDao.insertStudent(value);
    }

    public int deleteStudentByBatch(int[] ids){
        return studentDao.deleteStudentByBatch(ids);
    }

    @Override
    public List<StudentHonorAndFalut> selectStudentHonor() {
        return studentDao.selectStudentHonor();
    }
}