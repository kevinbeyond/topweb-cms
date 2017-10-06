package com.topweb.dao;

import com.topweb.entity.CMSConfig;

import java.util.List;

public interface CMSConfigMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CMSConfig record);

    int insertSelective(CMSConfig record);

    CMSConfig selectByPrimaryKey(Integer id);

    /**
     * 获取CMS已配置项
     * @return
     */
    List<CMSConfig> selectCMSConfigs();

    /**
     * 根据配置项名称查询配置
     * @param name
     * @return
     */
    CMSConfig selectByConfigName(String name);

    int updateByPrimaryKeySelective(CMSConfig record);

    int updateByPrimaryKeyWithBLOBs(CMSConfig record);

    int updateByPrimaryKey(CMSConfig record);
}