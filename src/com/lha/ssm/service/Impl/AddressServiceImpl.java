package com.lha.ssm.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lha.ssm.dao.AddressDao;
import com.lha.ssm.entity.Address;
import com.lha.ssm.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService{
	@Autowired
	private AddressDao dao;

	@Override
	public boolean addAddress(Address address) {
		int i = dao.addAddress(address);
		if (i!=0) {
			return true;
		}
		return false;
	}

	@Override
	public List<Address> allAddress() {
		return dao.allAddress();
	}
	
	
}
