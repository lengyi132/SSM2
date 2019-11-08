package com.lha.ssm.dao;

import java.util.List;

import com.lha.ssm.entity.Address;


public interface AddressDao {
	public int addAddress(Address address);
	
	public List<Address> allAddress();
}
