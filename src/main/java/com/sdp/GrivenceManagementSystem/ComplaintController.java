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
public class ComplaintController 
{
	@Autowired
	ComplaintManager c;
	@PostMapping("/complaint-register")
	public String complaintinsert(@RequestBody ComplaintDetails cd)
	{
		return c.saveData(cd);
	}
	
	@GetMapping("/complaint-register")
	public String complaintDIs()
	{
		return c.display();
	}
	
	@PutMapping("/complaint-update/{id}")
	public String complaintup(@RequestBody ComplaintDetails cd,@PathVariable("id") Long id)
	{
		return c.updatedata(cd,id);
	}
	@DeleteMapping("/complaint-withdraw/{id}")
	public String complaintdel(@PathVariable("id") Long id)
	{
		return c.deletedata(id);
	}
}
