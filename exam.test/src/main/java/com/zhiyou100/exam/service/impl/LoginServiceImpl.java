package com.zhiyou100.exam.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou100.exam.mapper.LoginMapper;
import com.zhiyou100.exam.model.User;
import com.zhiyou100.exam.service.LoginService;
@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	LoginMapper lm;
	
	@Override
	public User login(String username,String pwd) {
		return lm.login(username, pwd);
	}

	@Override
	public boolean checkName(String name) {
		Integer checkName = lm.checkName(name);
		System.out.println(checkName);
		System.out.println(checkName>0);
		
		if(checkName>0){
			return false;
		}else{
			return true;
		}
		
	}

}
