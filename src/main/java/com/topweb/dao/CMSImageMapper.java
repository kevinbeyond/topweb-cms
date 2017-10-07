package com.topweb.dao;

import com.topweb.entity.CMSImage;

public interface CMSImageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CMSImage record);

    int insertSelective(CMSImage record);

    CMSImage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CMSImage record);

    int updateByPrimaryKey(CMSImage record);
}