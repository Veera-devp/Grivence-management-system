package com.sdp.GrivenceManagementSystem;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.gson.GsonBuilderCustomizer;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

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
	
	public String findrole(String username)
    {
      return JsontoString(rr.findById(username)).toString();
    }
    
    public String JsontoString(Optional<Register> op)
    {
      final List<Register> list = op.stream().collect(Collectors.toList());
      
        GsonBuilder gb=new GsonBuilder();
        Gson g=gb.create();
        return g.toJson(list);
    }
}