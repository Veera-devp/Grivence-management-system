package com.sdp.GrivenceManagementSystem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminManager 
{
 
	@Autowired
	AdminRepository ar;
	
	public String verify(String username, String password)
	{
		if (ar.existsById(username)) 
		{
			Admin a=new Admin();
			a=ar.getById(username);
			if (a.getPassword().equals(password)) 
			{
				return "Login success";
			}
		}
		return "Login failed ";
	}
}
