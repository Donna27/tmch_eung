package com.mycompany.tmch.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.tmch.model.Menu;

@Controller
public class MenuController {
	List<Menu> listMenu = new ArrayList<Menu>();

	public MenuController() {
		// listMenu.add(new Menu("จัดการแม่", "/tmch/newSearchMom"));
		// listMenu.add(new Menu("จัดการลูก", "/tmch/newSearchChild"));
		// listMenu.add(new Menu("จัดการบทความ", "/tmch/newContent"));

	}

/*	@RequestMapping(value = "menu", method = RequestMethod.GET)
	public ModelAndView init(HttpServletRequest request, HttpServletResponse response) {
		UserDetailsApp user = UserLoginDetail.getUser();
		User userMo = user.getUserModel();
		ModelAndView mav = new ModelAndView();

		// System.out.println("User model :: "+userMo);
		// if(!userMo.equals(null) || userMo!=null ){
		if (userMo.isStaff()) {
			listMenu = getListStaff();
		}
		if (userMo.isMom()) {
			listMenu = getListMenuMom(String.valueOf(userMo.getKey().getId()));
		}
		if (userMo.isAdmin()) {
			listMenu = getListMenuAdmin();
		}

		mav.addObject("user", userMo);
		mav.addObject("menu", listMenu);
		return mav;
		// }else{
		// return null;
		// }

	}*/

	private List<Menu> getListStaff() {
		List<Menu> listmenustaff = new ArrayList<Menu>();
		listmenustaff.add(new Menu("จัดการข้อมูลแม่", "/tmch/newSearchMom"));
		listmenustaff.add(new Menu("จัดการข้อมูลลูก", "/tmch/newSearchChild"));
		listmenustaff.add(new Menu("จัดการบทความ", "/tmch/newContent"));
		return listmenustaff;
	}

	private List<Menu> getListMenuMom(String momid) {
		List<Menu> listmenustaff = new ArrayList<Menu>();
		listmenustaff.add(new Menu("ข้อมูลแม่", "/tmch/newMomProfile?momid=" + momid));
		listmenustaff.add(new Menu("ข้อมูลลูก", "/tmch/newChildList?momid" + momid));
		listmenustaff.add(new Menu("บทความ", "/tmch/newContent"));
		return listmenustaff;
	}

	private List<Menu> getListMenuAdmin() {
		List<Menu> listmenustaff = new ArrayList<Menu>();
		listmenustaff.add(new Menu("จัดการข้อมูลแม่", "/tmch/newManageMemb"));
		listmenustaff.add(new Menu("จัดการข้อมูลเจ้าหน้าที่", "/tmch/newManageStaff"));
		listmenustaff.add(new Menu("จัดการข้อมูลองค์กร", "/tmch/newManageOrg"));
		return listmenustaff;
	}
}
