package com.mycompany.tmch.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.tmch.model.User;
import com.mycompany.tmch.security.PasswordService;
import com.mycompany.tmch.service.UserService;

@Controller
public class RegisterController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/registerMomber",method=RequestMethod.GET)
	public String registerPage(){
		return "newRegisMemb";
	}
	
	@RequestMapping(value="saveMomUser",method=RequestMethod.POST)
	public void saveMomUser(HttpServletRequest request,HttpServletResponse response){
		String fnamemom=request.getParameter("fnamemom");
		String lnamemom=request.getParameter("lnamemom");
		String emailmom=request.getParameter("emailmom");
		String password=request.getParameter("passwordmom");
		String id13mom=request.getParameter("id13mom");
		PasswordService ps = new PasswordService();
		User user=new User();
		user.setFirstName(fnamemom);
		user.setLastname(lnamemom);
		//user.setMom(true);
		user.setCid(id13mom);
		user.setEmail(emailmom);
		user.setUsername(emailmom);
		try {
			user.setUser_password(ps.encrypt(password));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			userService.saveUserService(user);
			response.getWriter().println("success");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			try {
				response.getWriter().println("false" +e.getMessage());
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		
	}
}
