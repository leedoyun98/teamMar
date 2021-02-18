package com.example.demo.adm.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface ManagerMapper {

	public int register(Manager member);

	public int selectById(String id);

	public List<Manager> getList();

	public void updateMember(Manager member);

	public void deleteMember(Manager member);


	
	

}
