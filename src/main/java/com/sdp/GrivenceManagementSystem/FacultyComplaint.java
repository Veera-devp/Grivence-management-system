package com.sdp.GrivenceManagementSystem;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "faculty_complaints")
public class FacultyComplaint {
	private Long sid;
	@Id
	private String username;
	private String name;
	private String smail;
	private String issue;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Long getSid() {
		return sid;
	}

	public void setSid(Long sid) {
		this.sid = sid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSmail() {
		return smail;
	}

	public void setSmail(String smail) {
		this.smail = smail;
	}

	public String getIssue() {
		return issue;
	}

	public void setIssue(String issue) {
		this.issue = issue;
	}

	@Override
	public String toString() {
		return "FacultyComplaint [sid=" + sid + ", username=" + username + ", name=" + name + ", smail=" + smail
				+ ", issue=" + issue + "]";
	}

}
