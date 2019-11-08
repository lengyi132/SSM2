package com.lha.ssm.service;

import java.util.List;

import com.lha.ssm.entity.Address;

public interface AddressService {
	public boolean addAddress(Address address);
	
	public List<Address> allAddress();
}
