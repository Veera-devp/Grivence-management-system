package com.sdp.GrivenceManagementSystem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class RegisterController {
	@Autowired
	RegisterManager rm;

	@PostMapping("/insert")
	public String insertData(@RequestBody Register r) {
		return rm.saveData(r);
	}

	@PostMapping("/login/{username}/{password}")
	public String loginData(@PathVariable("username") String username, @PathVariable("password") String password) {
		return rm.loginData(username, password);
	}
	
	
	
	@GetMapping("/roles/{username}")
	public String userrole(@PathVariable("username") String username)
	{
		return rm.findrole(username);
	}
	
	@GetMapping("/register/users")
	public String readUSers()
	{
		return rm.readData();
	}
	
	@PutMapping("/register/update/{username}")
	public String registerupdate(@RequestBody Register r,@PathVariable("username") String username)
	{
		return rm.updatedata(r,username);
	}
}
