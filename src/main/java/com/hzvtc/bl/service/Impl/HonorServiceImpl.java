package com.hzvtc.bl.service.Impl;

import com.hzvtc.bl.common.Assist;
import com.hzvtc.bl.dao.HonorDao;
import com.hzvtc.bl.entity.Honor;
import com.hzvtc.bl.service.HonorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HonorServiceImpl implements HonorService {
    @Autowired
    private HonorDao honorDao;
    @Override
    public long getHonorRowCount(Assist assist){
        return honorDao.getHonorRowCount(assist);
    }
    @Override
    public List<Honor> selectHonor(Assist assist){
        return honorDao.selectHonor(assist);
    }
    @Override
    public Honor selectHonorByObj(Honor obj){
        return honorDao.selectHonorByObj(obj);
    }
    @Override
    public Honor selectHonorById(Integer id){
        return honorDao.selectHonorById(id);
    }
    @Override
    public int insertHonor(Honor value){
        return honorDao.insertHonor(value);
    }
    @Override
    public int insertNonEmptyHonor(Honor value){
        return honorDao.insertNonEmptyHonor(value);
    }
    @Override
    public int insertHonorByBatch(List<Honor> value){
        return honorDao.insertHonorByBatch(value);
    }
    @Override
    public int deleteHonorById(Integer id){
        return honorDao.deleteHonorById(id);
    }
    @Override
    public int deleteHonor(Assist assist){
        return honorDao.deleteHonor(assist);
    }
    @Override
    public int updateHonorById(Honor enti){
        return honorDao.updateHonorById(enti);
    }
    @Override
    public int updateHonor(Honor value, Assist assist){
        return honorDao.updateHonor(value,assist);
    }
    @Override
    public int updateNonEmptyHonorById(Honor enti){
        return honorDao.updateNonEmptyHonorById(enti);
    }
    @Override
    public int updateNonEmptyHonor(Honor value, Assist assist){
        return honorDao.updateNonEmptyHonor(value,assist);
    }

    public HonorDao getHonorDao() {
        return this.honorDao;
    }

    public void setHonorDao(HonorDao honorDao) {
        this.honorDao = honorDao;
    }

}