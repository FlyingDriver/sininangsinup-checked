package com.zhiyou100.exam.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou100.exam.service.RegistService;

@Controller
public class RegistController {

	@Autowired
	RegistService rs;
	
	@RequestMapping("/user/regist.action")
	public String regist(String username,String password,Model m) {
		
		if(rs.regist(username, password))
		{	
			m.addAttribute("username", username);
			m.addAttribute("password", password);
			return "login";
		}
		else{
			return "regist";
		}
		
	}
	
}
