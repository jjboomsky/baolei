package com.hzvtc.bl.service.Impl;
import java.util.List;
import com.hzvtc.bl.dao.CourseDao;
import com.hzvtc.bl.entity.Course;
import com.hzvtc.bl.common.Assist;
import com.hzvtc.bl.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CourseServiceImpl implements CourseService{
    @Autowired
    private CourseDao courseDao;
    @Override
    public long getCourseRowCount(Assist assist){
        return courseDao.getCourseRowCount(assist);
    }
    @Override
    public List<Course> selectCourse(Assist assist){
        return courseDao.selectCourse(assist);
    }
    @Override
    public Course selectCourseByObj(Course obj){
        return courseDao.selectCourseByObj(obj);
    }
    @Override
    public Course selectCourseById(Integer id){
        return courseDao.selectCourseById(id);
    }
    @Override
    public int insertCourse(Course value){
        return courseDao.insertCourse(value);
    }
    @Override
    public int insertNonEmptyCourse(Course value){
        return courseDao.insertNonEmptyCourse(value);
    }
    @Override
    public int insertCourseByBatch(List<Course> value){
        return courseDao.insertCourseByBatch(value);
    }
    @Override
    public int deleteCourseById(Integer id){
        return courseDao.deleteCourseById(id);
    }
    @Override
    public int deleteCourse(Assist assist){
        return courseDao.deleteCourse(assist);
    }
    @Override
    public int updateCourseById(Course enti){
        return courseDao.updateCourseById(enti);
    }
    @Override
    public int updateCourse(Course value, Assist assist){
        return courseDao.updateCourse(value,assist);
    }
    @Override
    public int updateNonEmptyCourseById(Course enti){
        return courseDao.updateNonEmptyCourseById(enti);
    }
    @Override
    public int updateNonEmptyCourse(Course value, Assist assist){
        return courseDao.updateNonEmptyCourse(value,assist);
    }

    public CourseDao getCourseDao() {
        return this.courseDao;
    }

    public void setCourseDao(CourseDao courseDao) {
        this.courseDao = courseDao;
    }

}