package com.sdp.GrivenceManagementSystem;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "exam_section")
public class Exam 
{
	@Id
	private Long id;
	private String name;
	private String email;
	private Long sem;
	private Long year;
	private String ccode;
	private String cname;
	private String issue;
	private String issue2;
	public String getIssue2() {
		return issue2;
	}
	public void setIssue2(String issue2) {
		this.issue2 = issue2;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getSem() {
		return sem;
	}
	public void setSem(Long sem) {
		this.sem = sem;
	}
	public Long getYear() {
		return year;
	}
	public void setYear(Long year) {
		this.year = year;
	}
	public String getCcode() {
		return ccode;
	}
	public void setCcode(String ccode) {
		this.ccode = ccode;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getIssue() {
		return issue;
	}
	public void setIssue(String issue) {
		this.issue = issue;
	}
	@Override
	public String toString() {
		return "Exam [id=" + id + ", name=" + name + ", email=" + email + ", sem=" + sem + ", year=" + year + ", ccode="
				+ ccode + ", cname=" + cname + ", issue=" + issue + ", issue2=" + issue2 + "]";
	}
	
}
