package com.topweb.dao;

import com.topweb.entity.FriendlyLink;
import com.topweb.entity.LinkName;
import com.topweb.entity.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 18710 on 2017/9/25.
 */
public interface FriendlyLinkMapper {
      List<FriendlyLink> friendlylinkList(@Param("link") FriendlyLink link, @Param("page")Page page);
      int nodeCountGuan (@Param("guan")String guanjian);
      int nodeCount(@Param("linkName")int linkename);
      List<LinkName> findLinkNames();
      FriendlyLink updateinfo(@Param("updateid")int id);
     int deleteinfo(@Param("deleteid")int id);
     int saveinfo(@Param("info")FriendlyLink link);
     int addinfo(@Param("info")FriendlyLink link);
}
