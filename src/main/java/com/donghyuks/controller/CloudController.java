package com.donghyuks.controller;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.donghyuks.domain.Email;
import com.donghyuks.domain.User;
import com.donghyuks.service.EmailService;
import com.donghyuks.service.RepositroyService;
import com.donghyuks.service.impl.EmailServiceImpl;

@Controller
public class CloudController {

	@RequestMapping(value="/")
    public String greeting() {
        return "index";
    }
	
	@RequestMapping(value="/admin")
    public String admin() {
        return "admin";
    }
	
	@RequestMapping(value="/login")
    public String login() {
        return "login";
    }
	
	@RequestMapping(value="/accessDenied")
	public String accessDenied() {
		return "accessDenied";
	}
	
	@Autowired
	EmailService smtp;
	
	@RequestMapping(value="/smtp", method=RequestMethod.POST)
	@ResponseBody
	public String smtp(@RequestBody Email email) {
		//System.out.println(email.toString());
		smtp.sendSimpleMessage(email);
		return "smtpok";
	}
	
	@Autowired
	RepositroyService repService;
	
	@RequestMapping(value="/login2", method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> login2(@RequestParam(name="id") String id, @RequestParam(name="pwd") String pwd) {
		
		 User check = repService.login(id, pwd);
		 HashMap<String,String> map = new HashMap<>();
		 if(check != null) {
			 map.put("Error", "false");
			 map.put("Message","Success");
			 //map.put("data",);
			 return map;
		 } else {
			 map.put("Error", "true");
			 map.put("Message","login fail");
			 //map.put("data",);
			 return map;
			 
		 }
		 
	}
	
	

}                         