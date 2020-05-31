package com.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.model.Articlemodel;
import com.model.RegisterMdel;
@Service
public interface ServiceInterface {

	void savere(RegisterMdel registerMdel);

	List<RegisterMdel> getListId(String username, String password);

	void savearticle(Articlemodel articlemodel);

	List<Articlemodel> getlist();
	

}
