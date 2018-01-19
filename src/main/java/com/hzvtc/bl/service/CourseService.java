package com.hzvtc.bl.service;
import java.util.List;
import com.hzvtc.bl.entity.Course;
import com.hzvtc.bl.common.Assist;
public interface CourseService{
	/**
	 * 获得Course数据的总行数,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    long getCourseRowCount(Assist assist);
	/**
	 * 获得Course数据集合,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    List<Course> selectCourse(Assist assist);
	/**
	 * 获得一个Course对象,以参数Course对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    Course selectCourseByObj(Course obj);
	/**
	 * 通过Course的id获得Course对象
	 * @param id
	 * @return
	 */
    Course selectCourseById(Integer id);
	/**
	 * 插入Course到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertCourse(Course value);
	/**
	 * 插入Course中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyCourse(Course value);
	/**
	 * 批量插入Course到数据库
	 * @param value
	 * @return
	 */
    int insertCourseByBatch(List<Course> value);
	/**
	 * 通过Course的id删除Course
	 * @param id
	 * @return
	 */
    int deleteCourseById(Integer id);
	/**
	 * 通过辅助工具Assist的条件删除Course
	 * @param assist
	 * @return
	 */
    int deleteCourse(Assist assist);
	/**
	 * 通过Course的id更新Course中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateCourseById(Course enti);
 	/**
	 * 通过辅助工具Assist的条件更新Course中的数据,包括null值
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateCourse(Course value,  Assist assist);
	/**
	 * 通过Course的id更新Course中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyCourseById(Course enti);
 	/**
	 * 通过辅助工具Assist的条件更新Course中属性不为null的数据
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateNonEmptyCourse(Course value, Assist assist);
}