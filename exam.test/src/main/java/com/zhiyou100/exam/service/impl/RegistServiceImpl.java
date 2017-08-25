package com.zhiyou100.exam.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou100.exam.mapper.RegistMapper;
import com.zhiyou100.exam.service.RegistService;

@Service
public class RegistServiceImpl implements RegistService {

	@Autowired
	RegistMapper rm;
	
	@Override
	public boolean regist(String username, String pwd) {
		return rm.regist(username, pwd);
	}

}
