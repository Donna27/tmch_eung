package com.mycompany.tmch.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="child")
public class Child {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int child_id;
	@Column(name="childorder")
	private int childorder;
	@Column(name="f_name")
	private String f_name;
	@Column(name="l_name")
	private String l_name;
	@Column(name="id_13",unique = true)
	private String id_13;
	@Column(name="birthday")
	private Date birthday;
	@Column(name="firstWieght")
	private double firstWieght;
	@Column(name="lengthOfBody")
	private double lengthOfBody;
	@Column(name="lengthOfHead")
	private double lengthOfHead;
	@Column(name="gender")
	private String gender;
	@Column(name="region")
	private String region;
	@Column(name="falseborn")
	private String falseborn;
	@Column(name="healthborn")
	private String healthborn;
	@Column(name="photo")
	private String photo;
	@Column(name="blood")
	private String blood;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "mom_id", nullable = false)
	private Mom mom;
	public Child(){
		
	}
	public Child(int child_id, int childorder, String f_name, String l_name, String id_13, Date birthday,
			double firstWieght, double lengthOfBody, double lengthOfHead, String gender, String region,
			String falseborn, String healthborn, String photo, String blood, Mom mom) {
		super();
		this.child_id = child_id;
		this.childorder = childorder;
		this.f_name = f_name;
		this.l_name = l_name;
		this.id_13 = id_13;
		this.birthday = birthday;
		this.firstWieght = firstWieght;
		this.lengthOfBody = lengthOfBody;
		this.lengthOfHead = lengthOfHead;
		this.gender = gender;
		this.region = region;
		this.falseborn = falseborn;
		this.healthborn = healthborn;
		this.photo = photo;
		this.blood = blood;
		this.mom = mom;
	}
	public int getChild_id() {
		return child_id;
	}
	public void setChild_id(int child_id) {
		this.child_id = child_id;
	}
	public int getChildorder() {
		return childorder;
	}
	public void setChildorder(int childorder) {
		this.childorder = childorder;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public String getId_13() {
		return id_13;
	}
	public void setId_13(String id_13) {
		this.id_13 = id_13;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public double getFirstWieght() {
		return firstWieght;
	}
	public void setFirstWieght(double firstWieght) {
		this.firstWieght = firstWieght;
	}
	public double getLengthOfBody() {
		return lengthOfBody;
	}
	public void setLengthOfBody(double lengthOfBody) {
		this.lengthOfBody = lengthOfBody;
	}
	public double getLengthOfHead() {
		return lengthOfHead;
	}
	public void setLengthOfHead(double lengthOfHead) {
		this.lengthOfHead = lengthOfHead;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getFalseborn() {
		return falseborn;
	}
	public void setFalseborn(String falseborn) {
		this.falseborn = falseborn;
	}
	public String getHealthborn() {
		return healthborn;
	}
	public void setHealthborn(String healthborn) {
		this.healthborn = healthborn;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getBlood() {
		return blood;
	}
	public void setBlood(String blood) {
		this.blood = blood;
	}
	public Mom getMom() {
		return mom;
	}
	public void setMom(Mom mom) {
		this.mom = mom;
	}
	
	
}
