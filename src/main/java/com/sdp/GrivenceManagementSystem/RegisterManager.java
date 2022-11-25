package com.sdp.GrivenceManagementSystem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterManager {
	@Autowired
	RegisterRepository rr;

	public String saveData(Register r) {
		rr.save(r);
		return "Data Inserted Successfully....!";
	}

	public String loginData(String username, String password) {
		if (rr.existsById(username)) {
			Register r = new Register();
			r = rr.getById(username);
			if (r.getPassword().equals(password)) {
				return "Login success";
			}
		}
		return "login failed ";
	}
}