package com.hzvtc.bl.dao;
import com.hzvtc.bl.entity.Student;
import java.util.List;
import com.hzvtc.bl.common.Assist;
import com.hzvtc.bl.entity.StudentHonorAndFalut;
import org.apache.ibatis.annotations.Param;
public interface StudentDao{
	/**
	 * 获得Student数据的总行数,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    long getStudentRowCount(Assist assist);
	/**
	 * 获得Student数据集合,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    List<Student> selectStudent(Assist assist);
	/**
	 * 获得一个Student对象,以参数Student对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    Student selectStudentByObj(Student obj);
	/**
	 * 通过Student的id获得Student对象
	 * @param id
	 * @return
	 */
    Student selectStudentById(Integer id);
	/**
	 * 插入Student到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertStudent(Student value);
	/**
	 * 插入Student中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyStudent(Student value);
	/**
	 * 批量插入Student到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertStudentByBatch(List<Student> value);
	/**
	 * 通过Student的id删除Student
	 * @param id
	 * @return
	 */
    int deleteStudentById(Integer id);
	/**
	 * 通过Student的id批量Student
	 * @param ids
	 * @return
	 */
	int deleteStudentByBatch(int[] ids);
	/**
	 * 通过辅助工具Assist的条件删除Student
	 * @param assist
	 * @return
	 */
    int deleteStudent(Assist assist);
	/**
	 * 通过Student的id更新Student中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateStudentById(Student enti);
 	/**
	 * 通过辅助工具Assist的条件更新Student中的数据,包括null值
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateStudent(@Param("enti") Student value, @Param("assist") Assist assist);
	/**
	 * 通过Student的id更新Student中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyStudentById(Student enti);
 	/**
	 * 通过辅助工具Assist的条件更新Student中属性不为null的数据
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateNonEmptyStudent(@Param("enti") Student value, @Param("assist") Assist assist);

    /**
	 * 通过Student的sclass和sfirsttime返回最大的学号
	 */
	int selectStudentMax(Student value);

	/**
	 * 通过Student的sclass和sfirsttime返回学生个数
	 */
	int getStudentCount(Student value);


	/*	得到学生荣誉*/
	List<StudentHonorAndFalut>  selectStudentHonor();

}