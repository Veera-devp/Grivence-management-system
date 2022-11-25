package com.sdp.GrivenceManagementSystem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class AdminController 
{
	@Autowired
	AdminManager am;
	
	@PostMapping("/login/admin/{username}/{password}")
	public String loginData(@PathVariable("username") String username, @PathVariable("password") String password) {
		return am.verify(username, password);
	}
}
