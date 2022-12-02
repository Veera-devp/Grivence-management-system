package com.sdp.GrivenceManagementSystem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ExamController 
{
	@Autowired
	ExamManager emr;
	
	@PostMapping("/exam-section")
	public String examinsert(@RequestBody Exam e)
	{
		return emr.saveData(e);
	}
	
	@GetMapping("/exam-section")
	public String ticketdiaplay()
	{
		return emr.display();
	}
}
