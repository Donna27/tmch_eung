package com.mycompany.tmch.jsonview;

import java.util.List;

import com.mycompany.tmch.model.Mom;

public class MomSearchJson {
	int iTotalRecords;
	int iTotalDisplayRecords;
	String sEcho;
	String sColumns;
	List<Mom> aoData;
	public int getiTotalRecords() {
		return iTotalRecords;
	}
	public void setiTotalRecords(int iTotalRecords) {
		this.iTotalRecords = iTotalRecords;
	}
	public int getiTotalDisplayRecords() {
		return iTotalDisplayRecords;
	}
	public void setiTotalDisplayRecords(int iTotalDisplayRecords) {
		this.iTotalDisplayRecords = iTotalDisplayRecords;
	}
	public String getsEcho() {
		return sEcho;
	}
	public void setsEcho(String sEcho) {
		this.sEcho = sEcho;
	}
	public String getsColumns() {
		return sColumns;
	}
	public void setsColumns(String sColumns) {
		this.sColumns = sColumns;
	}
	public List<Mom> getAoData() {
		return aoData;
	}
	public void setAoData(List<Mom> aoData) {
		this.aoData = aoData;
	}

	
	
}
