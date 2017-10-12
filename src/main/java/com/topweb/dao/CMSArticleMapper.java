package com.topweb.dao;

import com.topweb.entity.CMSArticle;
import com.topweb.entity.CMSArticleWithBLOBs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CMSArticleMapper {
    int deleteByPrimaryKey(Integer id);

    /**
     * 删除某篇文章，逻辑删除
     * @param id
     * @return
     */
    int updateArticleDelStatus(Integer id);

    int insert(CMSArticleWithBLOBs record);

    int insertSelective(CMSArticleWithBLOBs record);

    CMSArticleWithBLOBs selectByPrimaryKey(Integer id);

    /**
     * 获取文章列表
     * @return
     */
    List<CMSArticle> selectArticleList(@Param("class1") int class1, @Param("class2") int class2);

    int updateByPrimaryKeySelective(CMSArticleWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(CMSArticleWithBLOBs record);

    int updateByPrimaryKey(CMSArticle record);
}