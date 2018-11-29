package com.donghyuks.domain;

public class Email {
	private String firstName;
	private String email;
	private String contents;
	private String subject;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	@Override
	public String toString() {
		return "Email [firstName=" + firstName + ", email=" + email + ", contents=" + contents + ", subject=" + subject
				+ "]";
	}
	
	public String getMailContents() {
		return "보낸이 : " + this.email + "\n" + "내용 : " + this.contents;
	
	}
	
	

}
