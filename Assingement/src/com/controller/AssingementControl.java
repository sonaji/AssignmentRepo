package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.Articlemodel;
import com.model.RegisterMdel;
import com.service.ServiceInterface;

@Controller
public class AssingementControl {
	@Autowired
	ServiceInterface si;
	@RequestMapping("home1")
	public ModelAndView firstRequest()
	{
		return new ModelAndView("homePage");
		
	}
	//
	@RequestMapping("loginpage")
	public ModelAndView Loginpage(@RequestParam("username") String username,@RequestParam("password") String password,Model model)
	{
		List<RegisterMdel> registerMdels=new ArrayList<RegisterMdel>();
		registerMdels=si.getListId(username,password);
		if(registerMdels.size()>0)
		{
			model.addAttribute("m", "Login Successfully ");

			return new ModelAndView("ArticlePage");
		}
		else {
			model.addAttribute("m", "Please check your username and Password ");

			return new ModelAndView("homePage");

		}
		
		
	}
	
	//.html
	
	@RequestMapping("ArticleNew")
	public ModelAndView NewArticle()
	{
		
		return new ModelAndView("NewArticle");
		
	}
	@RequestMapping("aftersaveArticle")
	public ModelAndView saveArtice(Model model,Articlemodel articlemodel)
	{
		si.savearticle(articlemodel);
		model.addAttribute("article", "new article created");
		return new ModelAndView("ArticlePage");
		
	}
	//.html
	@RequestMapping("viewArticle")
	public ModelAndView showArticle(Model model,Articlemodel articlemodel)
	{
		List<Articlemodel> viewarticle;
		viewarticle=si.getlist();
		model.addAttribute("list", viewarticle);
       
		return new ModelAndView("ArticlePage");
		
	}
	@RequestMapping("Hi")
	public ModelAndView secondRequest(RegisterMdel registerMdel)
	{
		
		return new ModelAndView("RegisterUser");
		
	}
	@RequestMapping("saveregister")
	public ModelAndView saveR(RegisterMdel registerMdel,Model model)
	{
		 si.savere(registerMdel);
		 model.addAttribute("message", "User Register successfully");
		return new ModelAndView("homePage");
		
	}

}
