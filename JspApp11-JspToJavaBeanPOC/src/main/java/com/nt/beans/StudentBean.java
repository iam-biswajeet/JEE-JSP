package com.nt.beans;

import java.io.Serializable;

public class StudentBean implements Serializable {
	private int sid;
	private String sname;
	private String sadd;
	private float savg;
	public StudentBean() {
		System.out.println("StudentBean.StudentBean()");
	}
	public int getSid() {
		System.out.println("StudentBean.getSid()");
		return sid;
	}
	public void setSid(int sid) {
		System.out.println("StudentBean.setSid()");
		this.sid = sid;
	}
	public String getSname() {
		System.out.println("StudentBean.getSname()");
		return sname;
	}
	public void setSname(String sname) {
		System.out.println("StudentBean.setSname()");
		this.sname = sname;
	}
	public String getSadd() {
		System.out.println("StudentBean.getSadd()");
		return sadd;
	}
	public void setSadd(String sadd) {
		System.out.println("StudentBean.setSadd()");
		this.sadd = sadd;
	}
	public float getSavg() {
		System.out.println("StudentBean.getAvg()");
		return savg;
	}
	public void setSavg(float savg) {
		System.out.println("StudentBean.setAvg()");
		this.savg = savg;
	}
	
	
}
