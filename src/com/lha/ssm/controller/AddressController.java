package com.lha.ssm.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lha.ssm.entity.Address;
import com.lha.ssm.entity.User;
import com.lha.ssm.service.AddressService;
import com.lha.ssm.service.UserService;

@Controller
public class AddressController {
	
	@Autowired
	private AddressService as;
	@Autowired
	private UserService us;
	
	@RequestMapping("/deleteAddress/{id}/{userId}")
	public String deleteAddress(@PathVariable("id") Integer id,@PathVariable("userId") Integer userId){
		System.out.println(id);
		System.out.println(userId);
		return "index";
	}

	@RequestMapping("/initAddAddress")
	public String initAddAddress(){
		return "WEB-INF/pages/addAddress";
	}
	
	@RequestMapping("/addAddress")
	public String addAddress(Address address,Model m) {
		//address.setCreateTime(new Date());
		
		System.out.println(address.getCreateTime());
		if (address.getIsDefault()==null) {
			address.setIsDefault(0);
		}
		boolean isok = as.addAddress(address);
		if (isok) {
			m.addAttribute("msg", "新增地址成功");
		}else{
			m.addAttribute("msg", "新增地址失败");
		}
		return "WEB-INF/pages/addAddress";
	}
	
	@ModelAttribute("userlist")
	public List<User> getUsers(){
		List<User> list = us.allUser();
		return list;
	}
	
	@RequestMapping("/showAddresslist")
	public @ResponseBody List<Address> allAddress(){
		List<Address> list = as.allAddress();
		return list;
	}
}
