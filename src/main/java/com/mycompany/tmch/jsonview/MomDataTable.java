package com.mycompany.tmch.jsonview;

import java.sql.Timestamp;

public class MomDataTable {
	private int mom_id;
	private String mom_firstname;
	private String mom_lastname;
	private String mom_cid;
	private int amount_child;
	private Timestamp mom_create_datetime;
	public int getMom_id() {
		return mom_id;
	}
	public void setMom_id(int mom_id) {
		this.mom_id = mom_id;
	}
	public String getMom_firstname() {
		return mom_firstname;
	}
	public void setMom_firstname(String mom_firstname) {
		this.mom_firstname = mom_firstname;
	}
	public String getMom_lastname() {
		return mom_lastname;
	}
	public void setMom_lastname(String mom_lastname) {
		this.mom_lastname = mom_lastname;
	}
	public String getMom_cid() {
		return mom_cid;
	}
	public void setMom_cid(String mom_cid) {
		this.mom_cid = mom_cid;
	}
	public int getAmount_child() {
		return amount_child;
	}
	public void setAmount_child(int amount_child) {
		this.amount_child = amount_child;
	}
	public Timestamp getMom_create_datetime() {
		return mom_create_datetime;
	}
	public void setMom_create_datetime(Timestamp mom_create_datetime) {
		this.mom_create_datetime = mom_create_datetime;
	}
	
	
}
