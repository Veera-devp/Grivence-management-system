package com.sdp.GrivenceManagementSystem;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Service
public class FacultyComplaintManager 
{
	@Autowired
	FacultyComplaintRepository fr;
	public String saveData(FacultyComplaint fc)
	{
		fr.save(fc);
		return "Registered Successfully....!";
	}
	public String display()
	{
		return toJsonString(fr.findAll());
	}
	public String toJsonString(List<FacultyComplaint> objs)
	{
		GsonBuilder gb=new GsonBuilder();
		Gson g=gb.create();
		return g.toJson(objs);
		
	}
	public String updatedata(FacultyComplaint fc, String id)
	{
		FacultyComplaint fcc = fr.findById(id).get();
		fcc.setIssue(fc.getIssue());
		fr.save(fcc);
		return "Updated successfully.....";
	}
	public String deletedata(String username)
	{
		fr.deleteById(username);
		return "Deleted Successfully....";
	}
	public String readUsername(String username)
	{
		return JsontoString(fr.findById(username)).toString();
	}
	
	public String JsontoString(Optional<FacultyComplaint> op)
    {
      final List<FacultyComplaint> list = op.stream().collect(Collectors.toList());
      
        GsonBuilder gb=new GsonBuilder();
        Gson g=gb.create();
        return g.toJson(list);
    }
	
}
