package com.zhiyou100.exam.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhiyou100.exam.model.User;
import com.zhiyou100.exam.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginService ls;
	
	@RequestMapping("/user/login")
	public String login(String username,String password,Model m){
		User user = ls.login(username,password);
		if(user!=null){
			m.addAttribute("username", username);
			return "success";
		}
		return "login";
	}
	@RequestMapping("/checkName.action")
	@ResponseBody
	public String checkName(User u){
		String name = u.getName();
		boolean checkName = ls.checkName(name);
		System.out.println(checkName);
		if(checkName){
			return "success";
		}else{
			return "error";
		}
	}
}
