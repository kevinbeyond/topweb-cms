package com.topweb.dao;

import com.topweb.entity.Assess;
import com.topweb.entity.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 18710 on 2017/11/4.
 */
public interface AssessMapper {
     List<Assess> assesslist(@Param("chuli")int chuli,@Param("page")Page page);
     int nodeCount(@Param("chuli")int chuli);
     int deletenode(@Param("id")int id);
     int upnode(@Param("id")int id,@Param("chuli")int chuli);
     Assess assone(@Param("id")int id);
}
