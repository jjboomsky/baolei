package com.hzvtc.bl.service;
import java.util.List;
import com.hzvtc.bl.entity.Reach;
import com.hzvtc.bl.common.Assist;
import com.hzvtc.bl.entity.StudentReachAndHonor;

public interface ReachService{
	/**
	 * 获得Reach数据的总行数,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    long getReachRowCount(Assist assist);
	/**
	 * 获得Reach数据集合,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    List<Reach> selectReach(Assist assist);
	/**
	 * 获得一个Reach对象,以参数Reach对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    Reach selectReachByObj(Reach obj);
	/**
	 * 通过Reach的id获得Reach对象
	 * @param id
	 * @return
	 */
    Reach selectReachById(Integer id);
	/**
	 * 插入Reach到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertReach(Reach value);
	/**
	 * 插入Reach中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyReach(Reach value);
	/**
	 * 批量插入Reach到数据库
	 * @param value
	 * @return
	 */
    int insertReachByBatch(List<Reach> value);
	/**
	 * 通过Reach的id删除Reach
	 * @param id
	 * @return
	 */
    int deleteReachById(Integer id);
	/**
	 * 通过辅助工具Assist的条件删除Reach
	 * @param assist
	 * @return
	 */
    int deleteReach(Assist assist);
	/**
	 * 通过Reach的id更新Reach中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateReachById(Reach enti);
 	/**
	 * 通过辅助工具Assist的条件更新Reach中的数据,包括null值
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateReach(Reach value,  Assist assist);
	/**
	 * 通过Reach的id更新Reach中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyReachById(Reach enti);
 	/**
	 * 通过辅助工具Assist的条件更新Reach中属性不为null的数据
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateNonEmptyReach(Reach value, Assist assist);

	List<StudentReachAndHonor> selectStuReachByStuId(int sid);
}