package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.DaoInterface;
import com.model.Articlemodel;
import com.model.RegisterMdel;
@Service

public class ServiceClass  implements ServiceInterface{
	@Autowired
	DaoInterface di;

	@Override
	public void savere(RegisterMdel registerMdel) {
		di.savedi(registerMdel);
		
	}

	@Override
	public List<RegisterMdel> getListId(String username, String password) {
		// TODO Auto-generated method stub
		return di.getListId(username,password);
	}

	@Override
	public void savearticle(Articlemodel articlemodel) {
di.articlesave(articlemodel);		
	}

	@Override
	public List<Articlemodel> getlist() {
		// TODO Auto-generated method stub
		return di.showarticle();
	}

}
