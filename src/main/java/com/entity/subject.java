package com.entity;

public class subject {
    private String idsubject;
    private String namesubject;
	public subject() {
		super();
		// TODO Auto-generated constructor stub
	}
	public subject(String idsubject, String namesubject) {
		super();
		this.idsubject = idsubject;
		this.namesubject = namesubject;
	}
	public String getIdsubject() {
		return idsubject;
	}
	public void setIdsubject(String idsubject) {
		this.idsubject = idsubject;
	}
	public String getNamesubject() {
		return namesubject;
	}
	public void setNamesubject(String namesubject) {
		this.namesubject = namesubject;
	}
	@Override
	public String toString() {
		return "subject [idsubject=" + idsubject + ", namesubject=" + namesubject + "]";
	}
	


}

