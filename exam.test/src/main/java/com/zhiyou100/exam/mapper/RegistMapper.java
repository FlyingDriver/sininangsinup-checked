package com.zhiyou100.exam.mapper;

import org.apache.ibatis.annotations.Param;

public interface RegistMapper {

	boolean regist (@Param("username")String name,@Param("pwd")String pwd);
}
