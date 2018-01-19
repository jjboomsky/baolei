package com.hzvtc.bl.service;


import com.hzvtc.bl.common.Assist;
import com.hzvtc.bl.entity.Honor;

import java.util.List;

public interface HonorService {
	/**
	 * 获得Honor数据的总行数,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    long getHonorRowCount(Assist assist);
	/**
	 * 获得Honor数据集合,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    List<Honor> selectHonor(Assist assist);
	/**
	 * 获得一个Honor对象,以参数Honor对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    Honor selectHonorByObj(Honor obj);
	/**
	 * 通过Honor的id获得Honor对象
	 * @param id
	 * @return
	 */
    Honor selectHonorById(Integer id);
	/**
	 * 插入Honor到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertHonor(Honor value);
	/**
	 * 插入Honor中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyHonor(Honor value);
	/**
	 * 批量插入Honor到数据库
	 * @param value
	 * @return
	 */
    int insertHonorByBatch(List<Honor> value);
	/**
	 * 通过Honor的id删除Honor
	 * @param id
	 * @return
	 */
    int deleteHonorById(Integer id);
	/**
	 * 通过辅助工具Assist的条件删除Honor
	 * @param assist
	 * @return
	 */
    int deleteHonor(Assist assist);
	/**
	 * 通过Honor的id更新Honor中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateHonorById(Honor enti);
 	/**
	 * 通过辅助工具Assist的条件更新Honor中的数据,包括null值
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateHonor(Honor value, Assist assist);
	/**
	 * 通过Honor的id更新Honor中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyHonorById(Honor enti);
 	/**
	 * 通过辅助工具Assist的条件更新Honor中属性不为null的数据
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateNonEmptyHonor(Honor value, Assist assist);
}