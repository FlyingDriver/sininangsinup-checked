package com.zhiyou100.exam.mapper;


import org.apache.ibatis.annotations.Param;

import com.zhiyou100.exam.model.User;

public interface LoginMapper {

	
	User login(@Param("username")String name,@Param("pwd")String pwd);
	Integer checkName(@Param("name") String name);
}
