package com.zhiyou100.exam.service;

import com.zhiyou100.exam.model.User;

public interface LoginService {
	
	User  login(String username,String pwd);
	boolean checkName(String name);
}
