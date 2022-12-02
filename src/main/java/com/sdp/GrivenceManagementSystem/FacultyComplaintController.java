package com.sdp.GrivenceManagementSystem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class FacultyComplaintController 
{
	@Autowired
	FacultyComplaintManager fcr;
	@PostMapping("/faculty-complaint-register")
	public String complaintinsert(@RequestBody FacultyComplaint fc)
	{
		return fcr.saveData(fc);
	}
	@GetMapping("/faculty-complaint-register")
	public String complaintDIs()
	{
		return fcr.display();
	}
	@PutMapping("/faculty-complaint-update/{id}")
	public String complaintup(@RequestBody FacultyComplaint cd,@PathVariable("id") String id)
	{
		return fcr.updatedata(cd,id);
	}
	@DeleteMapping("/faculty-complaint-withdraw/{id}")
	public String complaintdel(@PathVariable("id") String id)
	{
		return fcr.deletedata(id);
	}
	@GetMapping("/faculty-complaint-register/{id}")
	public String compliantUser(@PathVariable("id") String username)
	{
		return fcr.readUsername(username);
	}
}
