package com.hzvtc.bl.service.Impl;
import java.util.List;
import com.hzvtc.bl.dao.TeacherDao;
import com.hzvtc.bl.entity.Teacher;
import com.hzvtc.bl.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class TeacherServiceImpl implements TeacherService{
    @Autowired
    private TeacherDao teacherDao;
    @Override
    public long getTeacherRowCount(){
        return teacherDao.getTeacherRowCount();
    }
    @Override
    public List<Teacher> selectTeacher(){
        return teacherDao.selectTeacher();
    }
    @Override
    public Teacher selectTeacherByObj(Teacher obj){
        return teacherDao.selectTeacherByObj(obj);
    }
    @Override
    public Teacher selectTeacherById(Integer id){
        return teacherDao.selectTeacherById(id);
    }
    @Override
    public int insertTeacher(Teacher value){
        return teacherDao.insertTeacher(value);
    }
    @Override
    public int insertNonEmptyTeacher(Teacher value){
        return teacherDao.insertNonEmptyTeacher(value);
    }
    @Override
    public int insertTeacherByBatch(List<Teacher> value){
        return teacherDao.insertTeacherByBatch(value);
    }
    @Override
    public int deleteTeacherById(Integer id){
        return teacherDao.deleteTeacherById(id);
    }
    @Override
    public int updateTeacherById(Teacher enti){
        return teacherDao.updateTeacherById(enti);
    }
    @Override
    public int updateNonEmptyTeacherById(Teacher enti){
        return teacherDao.updateNonEmptyTeacherById(enti);
    }

    public TeacherDao getTeacherDao() {
        return this.teacherDao;
    }

    public void setTeacherDao(TeacherDao teacherDao) {
        this.teacherDao = teacherDao;
    }

}