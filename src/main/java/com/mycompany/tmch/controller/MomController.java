package com.mycompany.tmch.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.PortableServer.REQUEST_PROCESSING_POLICY_ID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.tmch.jsonview.MomSearchJson;
import com.mycompany.tmch.mail.service.IMailSenderService;
import com.mycompany.tmch.model.Mom;
import com.mycompany.tmch.model.MomHealthHistory;
import com.mycompany.tmch.service.MomService;

@Controller
public class MomController {

	@Autowired
	MomService momservice;
	
	@Autowired
	IMailSenderService mailservice;
	@RequestMapping(value = "/searchMom", method = RequestMethod.GET)
	public String momSearchPage() {
		List<Object[]> listMmo = momservice.getAllMom();
		for (Object[] ob : listMmo) {
			System.out.println(ob.toString());
		}
		String firstname="";
		String lastname="";
		String cid="";
		momservice.getAllMomService(firstname, lastname, cid);
		return "newSearchMom";
	}

	@RequestMapping(value = "/saveMom", method = RequestMethod.POST)
	public void saveMom(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// Mother
		String mom_name = request.getParameter("momName");
		String mom_last = request.getParameter("momLast");
		String mom_id13 = request.getParameter("momId13");
		String region_mom = request.getParameter("region");
		String education_mom = request.getParameter("education");
		String email_mom = request.getParameter("email");
		String tel_mom = request.getParameter("tel");
		String occupation = request.getParameter("occupation");
		Mom mother = new Mom();

		// Mother Data
		mother.setMom_firstname(mom_name);
		mother.setMom_lastname(mom_last);
		mother.setMom_cid(mom_id13);
		mother.setMom_religion(region_mom);
		// mother.setEducation(education_mom);
		// mother.setEmail(email_mom);
		mother.setMom_tel(tel_mom);
		mother.setMom_occupation(occupation);
		// mother.setUser_create(null);

		Date date = new Date();
		mother.setMom_create_datetime(new Timestamp(date.getTime()));
		mother.setMom_modified_datetime(new Timestamp(date.getTime()));
		MomHealthHistory momhis=new MomHealthHistory();
		mother.setMomhealthhistory(momhis);
		momhis.setMom_id(mother);
		momservice.saveOrUpdateMomService(mother);
	}

	// @RequestMapping(value="/getAllMom",method=RequestMethod.GET)
	// public @ResponseBody List<Object[]>getAllMom(){
	// List<Object[]> listMmo=momservice.getAllMom();
	//
	// return listMmo;
	// }
	/**
	 * http://javahonk.com/spring-mvc-pagination-datatables/
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	
/*	@RequestMapping(value = "/getAllMom", method = RequestMethod.GET)
	//public @ResponseBody MomSearchJson getAllMother(HttpServletRequest request, HttpServletResponse response)
	public @ResponseBody String getAllMother(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		// Fetch the page number from client
		Integer pageNumber = 0;
		if (null != request.getParameter("iDisplayStart"))
			pageNumber = (Integer.valueOf(request.getParameter("iDisplayStart")) / 10) + 1;

		// Fetch search parameter
		String searchParameter = request.getParameter("sSearch");

		// Fetch Page display length
		Integer pageDisplayLength = Integer.valueOf(request.getParameter("iDisplayLength"));

		// Create page list data

		MomSearchJson momsearch = new MomSearchJson();
		// Set Total display record
		momsearch.setiTotalDisplayRecords(500);
		// Set Total record
		momsearch.setiTotalRecords(500);
		momsearch.setAoData(momservice.getAllMomDatableService());
		ObjectMapper mapper = new ObjectMapper();
		String jsonInString = mapper.writeValueAsString(momsearch);
		
//		return  momsearch;
		return jsonInString;
//		Gson gson = new GsonBuilder().setPrettyPrinting().create();
//		String json2 = gson.toJson(momsearch);
//	
//		return json2;
	}*/
	
	@RequestMapping(value="searchMom",method=RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public  List<Mom> getListMomByName(
			HttpServletRequest request,HttpServletResponse response){

		String mom_firstname=request.getParameter("fisrtname");
		String mom_lastname=request.getParameter("lastname");
		String mom_cid=request.getParameter("cid");
			return momservice.getAllMomService(mom_firstname, mom_lastname, mom_cid);

		

	}
	
	@RequestMapping(value="momProfile",method=RequestMethod.GET)
	public String profileMomPage()throws Exception{
		return "newMomProfile";
	}
	
	@RequestMapping(value="getMomProfile",method=RequestMethod.GET)
	@ResponseBody
	public Mom getMomProfile(HttpServletRequest request,HttpServletResponse response)throws Exception{
		String momid=request.getParameter("momid");
		Mom mom=momservice.getMombyIdService(Integer.valueOf(momid));
//		mailservice.crunchifyReadyToSendEmail("donna.ch27@gmail.com", "percussion27@hotmail.com", "test", "Do you have appointment?");
		return mom;
	}
	@RequestMapping(value="updatemomprofile",method=RequestMethod.POST)
	public void updateMomProfile(HttpServletRequest request,HttpServletResponse response){
		// setting key 
		String momid=request.getParameter("momid");
		// setting  mother data
		String momfname=request.getParameter("momfname");
		String momlname=request.getParameter("momlname");
		String momid13=request.getParameter("momid13");
		String momemail=request.getParameter("emailmom");
		String momtel=request.getParameter("momtel");
		String momoccur=request.getParameter("momoccur");
		String momregion=request.getParameter("momregion");
		
		// setting father data
		String dadfname=request.getParameter("dadfname");
		String dadlname=request.getParameter("dadlname");
		String dadid13=request.getParameter("dadid13");
		String dademail=request.getParameter("dademail");
		String dadtel=request.getParameter("dadtel");
		String dadoccur=request.getParameter("dadoccur");
		String dadregion=request.getParameter("dadregion");
		
		// setting address
		String noaddress=request.getParameter("noaddress");
		String moo=request.getParameter("moo");
		String soi=request.getParameter("soi");
		String road=request.getParameter("road");
		String locality=request.getParameter("locality");
		String distric=request.getParameter("distric");
		String province=request.getParameter("province");
		String zipcode=request.getParameter("zipcode");
//		Key momkey=KeyFactory.createKey(Mother.class.getSimpleName(), Long.valueOf(momid));
		Mom mom1= momservice.getMombyIdService(Integer.valueOf(momid));
//		Mom mom=new Mom();
		// set key mom
//		mom.setKey(momkey);
		
		mom1.setMom_firstname(momfname);
		mom1.setMom_lastname(momlname);
		mom1.setMom_cid(momid13);
//		mom1.setEmail(momemail);
		mom1.setMom_tel(momtel);
		mom1.setMom_occupation(momoccur);
/*		mom1.setMom_religion(momregion);
		
		//setting spouse data
		mom1.setDad_firstname(dadfname);
		mom1.setDad_lastname(dadlname);
		mom1.setDad_cid(dadid13);
		mom1.setDad_email(dademail);
		mom1.setDad_mobile(dadtel);
		mom1.setDad_occupation(dadoccur);
		mom1.setDad_religion(dadregion);
		
		// setting address
		mom.setNo_address(noaddress);
		mom.setRoad(road);
		mom.setMoo(moo);
		mom.setSoi(soi);
		mom.setLocality(locality);
		mom.setDistric(distric);
		mom.setProvince(province);
		mom.setZipcode(zipcode);*/
		System.out.println(mom1.toString());
		try {
			momservice.saveOrUpdateMomService(mom1);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value="momHealth",method=RequestMethod.GET)
	public String momHealthPage()throws Exception{
		return "newMomHealth";
	}
	
	@RequestMapping(value="getmomhealthhistory",method=RequestMethod.GET)
	public MomHealthHistory getmomhealthhistory(HttpServletRequest request,HttpServletResponse response){
		try{
			String mom_id=request.getParameter("momid");
			return momservice.getMomHealthHistoryDataService(Integer.valueOf(mom_id));
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
