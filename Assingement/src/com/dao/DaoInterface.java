package com.dao;

import java.util.List;

import com.model.Articlemodel;
import com.model.RegisterMdel;

public interface DaoInterface {

	void savedi(RegisterMdel registerMdel);

	List<RegisterMdel> getListId(String username, String password);

	void articlesave(Articlemodel articlemodel);

	List<Articlemodel> showarticle();

}
