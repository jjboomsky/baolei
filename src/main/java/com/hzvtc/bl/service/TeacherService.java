package com.hzvtc.bl.service;
import java.util.List;
import com.hzvtc.bl.entity.Teacher;
public interface TeacherService{
	/**
	 * 获得Teacher数据的总行数
	 * @return
	 */
    long getTeacherRowCount();
	/**
	 * 获得Teacher数据集合
	 * @return
	 */
    List<Teacher> selectTeacher();
	/**
	 * 获得一个Teacher对象,以参数Teacher对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    Teacher selectTeacherByObj(Teacher obj);
	/**
	 * 通过Teacher的id获得Teacher对象
	 * @param id
	 * @return
	 */
    Teacher selectTeacherById(Integer id);
	/**
	 * 插入Teacher到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertTeacher(Teacher value);
	/**
	 * 插入Teacher中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyTeacher(Teacher value);
	/**
	 * 批量插入Teacher到数据库
	 * @param value
	 * @return
	 */
    int insertTeacherByBatch(List<Teacher> value);
	/**
	 * 通过Teacher的id删除Teacher
	 * @param id
	 * @return
	 */
    int deleteTeacherById(Integer id);
	/**
	 * 通过Teacher的id更新Teacher中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateTeacherById(Teacher enti);
	/**
	 * 通过Teacher的id更新Teacher中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyTeacherById(Teacher enti);
}