package com.mycompany.tmch.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="mom_health_history")
public class MomHealthHistory {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int mom_health_history_id;
	@Column(name="mom_birth")
	private Date mom_birth;
	@Column(name="mom_weigth")
	private double mom_weigth;
	@Column(name="mom_height")
	private double mom_height;
	@Column(name="contraception")
	private String contraception;//การคุมกำเนิด
	@Column(name="surgicalHistory")
	private String surgicalHistory;//ประวัติการผ่าตัด
	@Column(name="allergicHistory")
	private String allergicHistory;//ประวัติการแพ้ยา
	@Column(name="physicalHealth")
	private String physicalHealth;// ประวัติการเจ็บป่วย
	@OneToOne
	@JoinColumn(name = "mom_id", nullable = false)
//	@OneToOne(fetch = FetchType.EAGER)
	@PrimaryKeyJoinColumn
	private Mom mom_id;
	public MomHealthHistory(){}
	
	public MomHealthHistory(int mom_health_history_id, Date mom_birth, double mom_weigth, double mom_height,
			String contraception, String surgicalHistory, String allergicHistory, String physicalHealth, Mom mom_id) {
		super();
		this.mom_health_history_id = mom_health_history_id;
		this.mom_birth = mom_birth;
		this.mom_weigth = mom_weigth;
		this.mom_height = mom_height;
		this.contraception = contraception;
		this.surgicalHistory = surgicalHistory;
		this.allergicHistory = allergicHistory;
		this.physicalHealth = physicalHealth;
		this.mom_id = mom_id;
	}

	public int getMom_health_history_id() {
		return mom_health_history_id;
	}
	public void setMom_health_history_id(int mom_health_history_id) {
		this.mom_health_history_id = mom_health_history_id;
	}
	public Date getMom_birth() {
		return mom_birth;
	}
	public void setMom_birth(Date mom_birth) {
		this.mom_birth = mom_birth;
	}
	public double getMom_weigth() {
		return mom_weigth;
	}
	public void setMom_weigth(double mom_weigth) {
		this.mom_weigth = mom_weigth;
	}
	public double getMom_height() {
		return mom_height;
	}
	public void setMom_height(double mom_height) {
		this.mom_height = mom_height;
	}
	public String getContraception() {
		return contraception;
	}
	public void setContraception(String contraception) {
		this.contraception = contraception;
	}
	public String getSurgicalHistory() {
		return surgicalHistory;
	}
	public void setSurgicalHistory(String surgicalHistory) {
		this.surgicalHistory = surgicalHistory;
	}
	public String getAllergicHistory() {
		return allergicHistory;
	}
	public void setAllergicHistory(String allergicHistory) {
		this.allergicHistory = allergicHistory;
	}
	public String getPhysicalHealth() {
		return physicalHealth;
	}
	public void setPhysicalHealth(String physicalHealth) {
		this.physicalHealth = physicalHealth;
	}
	public Mom getMom_id() {
		return mom_id;
	}
	public void setMom_id(Mom mom_id) {
		this.mom_id = mom_id;
	}
	
}
