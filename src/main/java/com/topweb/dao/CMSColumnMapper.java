package com.topweb.dao;

import com.topweb.entity.CMSColumn;
import com.topweb.entity.CMSColumnExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CMSColumnMapper {
    int countByExample(CMSColumnExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CMSColumn record);

    int insertSelective(CMSColumn record);

    CMSColumn selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CMSColumn record);

    int updateByPrimaryKeyWithBLOBs(CMSColumn record);

    int updateByPrimaryKey(CMSColumn record);

    /**
     * 根据栏目等级获取栏目列表
     * @param classtype
     * @return
     */
    List<CMSColumn> selectByColumnClassType(int classtype);

    /**
     * 根据模块和栏目等级查询栏目列表
     * @param moduleId
     * @param classtype
     * @return
     */
    List<CMSColumn> selectByModuleAndClassType(@Param("moduleId") int moduleId, @Param("classtype") int classtype);
}