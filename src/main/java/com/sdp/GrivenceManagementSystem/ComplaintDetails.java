package com.sdp.GrivenceManagementSystem;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "complaints")
public class ComplaintDetails {
	private Long fid;
	private String fname,fmail,hmail;
	private int sec,hid;
	private String branch;
	private String dep;
	private String issue;
	
	@Id
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFmail() {
		return fmail;
	}
	public void setFmail(String fmail) {
		this.fmail = fmail;
	}
	public String getHmail() {
		return hmail;
	}
	public void setHmail(String hmail) {
		this.hmail = hmail;
	}
	public Long getFid() {
		return fid;
	}
	public void setFid(Long fid) {
		this.fid = fid;
	}
	public int getSec() {
		return sec;
	}
	public void setSec(int sec) {
		this.sec = sec;
	}
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getDep() {
		return dep;
	}
	public void setDep(String dep) {
		this.dep = dep;
	}
	public String getIssue() {
		return issue;
	}
	public void setIssue(String issue) {
		this.issue = issue;
	}
	@Override
	public String toString() {
		return "ComplaintDetails [fid=" + fid + ", fname=" + fname + ", fmail=" + fmail + ", hmail=" + hmail + ", sec="
				+ sec + ", hid=" + hid + ", branch=" + branch + ", dep=" + dep + ", issue=" + issue + ", username="
				+ username + "]";
	}
	
}
