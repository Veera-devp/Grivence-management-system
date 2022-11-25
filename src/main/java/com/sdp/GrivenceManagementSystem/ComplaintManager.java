package com.sdp.GrivenceManagementSystem;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Service
public class ComplaintManager {
	@Autowired
	ComplaintRepository cr;
	public String saveData(ComplaintDetails c)
	{
		cr.save(c);
		return "Registered Successfully....!";
	}
	public String display()
	{
		return toJsonString(cr.findAll());
	}
	public String toJsonString(List<ComplaintDetails> obj)
	{
		GsonBuilder gb=new GsonBuilder();
		Gson g=gb.create();
		return g.toJson(obj);
		
	}
	public String updatedata(ComplaintDetails cd, Long id)
	{
		ComplaintDetails cc = cr.findById(id).get();
		cc.setFname(cd.getFname());
		cc.setIssue(cd.getIssue());
		cr.save(cc);
		return "Updated successfully.....";
	}
	public String deletedata(Long id)
	{
		cr.deleteById(id);
		return "Deleted Successfully....";
	}
}
