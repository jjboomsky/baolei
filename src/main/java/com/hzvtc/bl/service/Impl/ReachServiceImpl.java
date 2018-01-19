package com.hzvtc.bl.service.Impl;
import java.util.List;
import com.hzvtc.bl.dao.ReachDao;
import com.hzvtc.bl.entity.Reach;
import com.hzvtc.bl.common.Assist;
import com.hzvtc.bl.entity.StudentReachAndHonor;
import com.hzvtc.bl.service.ReachService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ReachServiceImpl implements ReachService{
    @Autowired
    private ReachDao reachDao;
    @Override
    public long getReachRowCount(Assist assist){
        return reachDao.getReachRowCount(assist);
    }
    @Override
    public List<Reach> selectReach(Assist assist){
        return reachDao.selectReach(assist);
    }
    @Override
    public Reach selectReachByObj(Reach obj){
        return reachDao.selectReachByObj(obj);
    }
    @Override
    public Reach selectReachById(Integer id){
        return reachDao.selectReachById(id);
    }
    @Override
    public int insertReach(Reach value){
        return reachDao.insertReach(value);
    }
    @Override
    public int insertNonEmptyReach(Reach value){
        return reachDao.insertNonEmptyReach(value);
    }
    @Override
    public int insertReachByBatch(List<Reach> value){
        return reachDao.insertReachByBatch(value);
    }
    @Override
    public int deleteReachById(Integer id){
        return reachDao.deleteReachById(id);
    }
    @Override
    public int deleteReach(Assist assist){
        return reachDao.deleteReach(assist);
    }
    @Override
    public int updateReachById(Reach enti){
        return reachDao.updateReachById(enti);
    }
    @Override
    public int updateReach(Reach value, Assist assist){
        return reachDao.updateReach(value,assist);
    }
    @Override
    public int updateNonEmptyReachById(Reach enti){
        return reachDao.updateNonEmptyReachById(enti);
    }
    @Override
    public int updateNonEmptyReach(Reach value, Assist assist){
        return reachDao.updateNonEmptyReach(value,assist);
    }

    public ReachDao getReachDao() {
        return this.reachDao;
    }

    public void setReachDao(ReachDao reachDao) {
        this.reachDao = reachDao;
    }

    @Override
    public List<StudentReachAndHonor> selectStuReachByStuId(int sid) {
        return reachDao.selectStuReachByStuId(sid);
    }
}