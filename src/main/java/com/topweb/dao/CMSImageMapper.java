package com.topweb.dao;

import com.topweb.entity.CMSImage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CMSImageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CMSImage record);

    int insertSelective(CMSImage record);

    CMSImage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CMSImage record);

    int updateByPrimaryKey(CMSImage record);

    /**
     * 获取图片模块列表
     * @param class1
     * @return
     */
    List<CMSImage> selectImageList(@Param("class1") int class1, @Param("class2") int class2,
                                   @Param("pageSize") int pageSize, @Param("offset") int offset);

    /**
     * 更改图片记录的删除状态-逻辑删除
     * @param imgId
     * @return
     */
    int updateImageDelStatus(@Param("id") int imgId);

    /**
     * 获取图片记录数
     * @param class1
     * @param class2
     * @return
     */
    int queryImageCnt(@Param("class1") int class1,@Param("class2") int class2);
}