package com.topweb.dao;

import com.topweb.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 18710 on 2017/10/7.
 */
public interface UManagementMapper {
    List<School> schoollist(@Param("school") School school, @Param("page")Page page);
    List <Nature> naturelist();
    int schoolconut(@Param("school")School school);
    int deleteschool(@Param("deleteid")int id);
    School upschool(@Param("id")int id);
    int upinfo(@Param("school")School school);
    int addinfo(@Param("school")School school);
    int addtuition(@Param("tuition")Tuition tuition);
    int uptuition(@Param("tuition")Tuition tuition);
    Tuition setuition(@Param("sid")int sid);
    int selectsid(@Param("uname")String uname);
    int addshoolimg(@Param("simg")Schoolimg schoolimg);
    int deletetuition(@Param("id")int id);
}
