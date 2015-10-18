package com.mycompany.tmch.model;

public class Menu {
	private String menu_name;
	private String menu_item;
	public Menu(){
		
	}
	public Menu(String menu_name, String menu_item) {
		super();
		this.menu_name = menu_name;
		this.menu_item = menu_item;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getMenu_item() {
		return menu_item;
	}
	public void setMenu_item(String menu_item) {
		this.menu_item = menu_item;
	}
	@Override
	public String toString() {
		return "Menu [menu_name=" + menu_name + ", menu_item=" + menu_item
				+ "]";
	}
	
}
