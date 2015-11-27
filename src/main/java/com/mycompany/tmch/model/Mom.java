package com.mycompany.tmch.model;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="mom")
public class Mom {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int mom_id;
	@Column(name="mom_firstname")
	private String mom_firstname;
	@Column(name="mom_lastname")
	private String mom_lastname;
	@Column(name="mom_cid",unique = true,nullable=false)
	private String mom_cid;
	@Column(name="mom_tel")
	private String mom_tel;
	@Column(name="mom_religion")
	private String mom_religion;
	@Column(name="mom_occupation")
	private String mom_occupation;
	@Column(name="dad_cid")
	private String dad_cid;
	@Column(name="dad_firstname")
	private String dad_firstname;
	@Column(name="dad_lastname")
	private String dad_lastname;
	@Column(name="dad_email")
	private String dad_email;
	@Column(name="dad_occupation")
	private String dad_occupation;
	@Column(name="dad_mobile")
	private String dad_mobile;
	@Column(name="dad_religion")
	private String dad_religion;
	@Column(name="mom_create_datetime")
	private Timestamp mom_create_datetime;
	@Column(name="mom_modified_datetime")
	private Timestamp mom_modified_datetime;
	@Column(name="user_create")
	private int user_create;
	@Column(name="user_modified")
	private int user_modified;
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "mom")
//	@OneToMany( mappedBy = "mom")
	private Set<Child> childList=new HashSet<Child>();
	public Mom(){}
	
	public Mom(int mom_id, String mom_firstname, String mom_lastname, String mom_cid, String mom_tel,
			String mom_religion, String mom_occupation, String dad_cid, String dad_firstname, String dad_lastname,
			String dad_email, String dad_occupation, String dad_mobile, String dad_religion,
			Timestamp mom_create_datetime, Timestamp mom_modified_datetime, int user_create, int user_modified,
			Set<Child> childList) {
		super();
		this.mom_id = mom_id;
		this.mom_firstname = mom_firstname;
		this.mom_lastname = mom_lastname;
		this.mom_cid = mom_cid;
		this.mom_tel = mom_tel;
		this.mom_religion = mom_religion;
		this.mom_occupation = mom_occupation;
		this.dad_cid = dad_cid;
		this.dad_firstname = dad_firstname;
		this.dad_lastname = dad_lastname;
		this.dad_email = dad_email;
		this.dad_occupation = dad_occupation;
		this.dad_mobile = dad_mobile;
		this.dad_religion = dad_religion;
		this.mom_create_datetime = mom_create_datetime;
		this.mom_modified_datetime = mom_modified_datetime;
		this.user_create = user_create;
		this.user_modified = user_modified;
		this.childList = childList;
	}

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
	public String getMom_tel() {
		return mom_tel;
	}
	public void setMom_tel(String mom_tel) {
		this.mom_tel = mom_tel;
	}
	public String getMom_religion() {
		return mom_religion;
	}
	public void setMom_religion(String mom_religion) {
		this.mom_religion = mom_religion;
	}
	public String getMom_occupation() {
		return mom_occupation;
	}
	public void setMom_occupation(String mom_occupation) {
		this.mom_occupation = mom_occupation;
	}
	public String getDad_cid() {
		return dad_cid;
	}
	public void setDad_cid(String dad_cid) {
		this.dad_cid = dad_cid;
	}
	public String getDad_firstname() {
		return dad_firstname;
	}
	public void setDad_firstname(String dad_firstname) {
		this.dad_firstname = dad_firstname;
	}
	public String getDad_lastname() {
		return dad_lastname;
	}
	public void setDad_lastname(String dad_lastname) {
		this.dad_lastname = dad_lastname;
	}
	public String getDad_email() {
		return dad_email;
	}
	public void setDad_email(String dad_email) {
		this.dad_email = dad_email;
	}
	public String getDad_occupation() {
		return dad_occupation;
	}
	public void setDad_occupation(String dad_occupation) {
		this.dad_occupation = dad_occupation;
	}
	public String getDad_mobile() {
		return dad_mobile;
	}
	public void setDad_mobile(String dad_mobile) {
		this.dad_mobile = dad_mobile;
	}
	public String getDad_religion() {
		return dad_religion;
	}
	public void setDad_religion(String dad_religion) {
		this.dad_religion = dad_religion;
	}
	public Timestamp getMom_create_datetime() {
		return mom_create_datetime;
	}
	public void setMom_create_datetime(Timestamp mom_create_datetime) {
		this.mom_create_datetime = mom_create_datetime;
	}
	public Timestamp getMom_modified_datetime() {
		return mom_modified_datetime;
	}
	public void setMom_modified_datetime(Timestamp mom_modified_datetime) {
		this.mom_modified_datetime = mom_modified_datetime;
	}
	public int getUser_create() {
		return user_create;
	}
	public void setUser_create(int user_create) {
		this.user_create = user_create;
	}
	public int getUser_modified() {
		return user_modified;
	}
	public void setUser_modified(int user_modified) {
		this.user_modified = user_modified;
	}
	public Set<Child> getChildList() {
		return childList;
	}
	public void setChildList(Set<Child> childList) {
		this.childList = childList;
	}
	@Override
	public String toString() {
		return "Mom [mom_id=" + mom_id + ", mom_firstname=" + mom_firstname + ", mom_lastname=" + mom_lastname
				+ ", mom_cid=" + mom_cid + ", mom_tel=" + mom_tel + ", mom_religion=" + mom_religion
				+ ", mom_occupation=" + mom_occupation + ", dad_cid=" + dad_cid + ", dad_firstname=" + dad_firstname
				+ ", dad_lastname=" + dad_lastname + ", dad_email=" + dad_email + ", dad_occupation=" + dad_occupation
				+ ", dad_mobile=" + dad_mobile + ", dad_religion=" + dad_religion + ", mom_create_datetime="
				+ mom_create_datetime + ", mom_modified_datetime=" + mom_modified_datetime + ", user_create="
				+ user_create + ", user_modified=" + user_modified + ", childList=" + childList + "]";
	}
	
}
