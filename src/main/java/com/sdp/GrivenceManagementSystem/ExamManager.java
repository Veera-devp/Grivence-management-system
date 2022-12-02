package com.sdp.GrivenceManagementSystem;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Service
public class ExamManager 
{
	@Autowired
	ExamRepository em;
	
	public String saveData(Exam e)
	{
		em.save(e);
		return "Registered Successfully....!";
	}
	public String display()
	{
		return toJsonString(em.findAll());
	}
	public String toJsonString(List<Exam> obj)
	{
		GsonBuilder gb=new GsonBuilder();
		Gson g=gb.create();
		return g.toJson(obj);
		
	}
}
