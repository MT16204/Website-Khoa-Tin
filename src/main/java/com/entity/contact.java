package com.entity;

public class contact {
    private String id;
    private String email;
    private String name;
    private String idsubject;
    private String message;
    private String sent_at;
	public contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	public contact(String id, String email, String name, String idsubject, String message, String sent_at) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.idsubject = idsubject;
		this.message = message;
		this.sent_at = sent_at;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdsubject() {
		return idsubject;
	}
	public void setIdsubject(String idsubject) {
		this.idsubject = idsubject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getSent_at() {
		return sent_at;
	}
	public void setSent_at(String sent_at) {
		this.sent_at = sent_at;
	}
	@Override
	public String toString() {
		return "contact [id=" + id + ", email=" + email + ", name=" + name + ", idsubject=" + idsubject + ", message="
				+ message + ", sent_at=" + sent_at + "]";
	}



}

