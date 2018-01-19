package com.hzvtc.bl.dao;
import com.hzvtc.bl.entity.Score;
import java.util.List;
public interface ScoreDao{
	/**
	 * 获得Score数据的总行数
	 * @return
	 */
    long getScoreRowCount();
	/**
	 * 获得Score数据集合
	 * @return
	 */
    List<Score> selectScore();
	/**
	 * 获得一个Score对象,以参数Score对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    Score selectScoreByObj(Score obj);
	/**
	 * 通过Score的id获得Score对象
	 * @param id
	 * @return
	 */
    Score selectScoreById(Integer id);
	/**
	 * 插入Score到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertScore(Score value);
	/**
	 * 插入Score中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyScore(Score value);
	/**
	 * 批量插入Score到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertScoreByBatch(List<Score> value);
	/**
	 * 通过Score的id删除Score
	 * @param id
	 * @return
	 */
    int deleteScoreById(Integer id);
	/**
	 * 通过Score的id更新Score中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateScoreById(Score enti);
	/**
	 * 通过Score的id更新Score中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyScoreById(Score enti);
}