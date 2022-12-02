package com.sdp.GrivenceManagementSystem;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Service
public class ComplaintManager {
	@Autowired
	ComplaintRepository cr;
	
	 
	
	public String readUsername(String username)
	{
		return JsontoString(cr.findById(username)).toString();
	}
	
	public String JsontoString(Optional<ComplaintDetails> op)
    {
      final List<ComplaintDetails> list = op.stream().collect(Collectors.toList());
      
        GsonBuilder gb=new GsonBuilder();
        Gson g=gb.create();
        return g.toJson(list);
    }
	
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
	public String updatedata(ComplaintDetails cd, String id)
	{
		ComplaintDetails cc = cr.findById(id).get();
		cc.setIssue(cd.getIssue());
		cr.save(cc);
		return "Updated successfully.....";
	}
	public String deletedata(String username)
	{
		cr.deleteById(username);
		return "Deleted Successfully....";
	}
}
