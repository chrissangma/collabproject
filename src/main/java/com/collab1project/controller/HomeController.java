package com.collab1project.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.collab1project.model.Blog;
import com.collab1project.model.Forum;
import com.collab1project.model.Message;
import com.collab1project.model.OutputMessage;
import com.collab1project.model.User;
import com.collab1project.service.BlogService;
import com.collab1project.service.ForumService;
import com.collab1project.service.UserService;
import com.google.gson.Gson;



@Controller
public class HomeController {
	
	
	@Autowired
    private UserService userService;
    
    @Autowired
    private BlogService blogService;
    
    @Autowired
    private ForumService forumService;
	
	@RequestMapping("/")
	public String getIndex()
	{
		return "index";
	}
	
	
	@RequestMapping("/home")
	public String getHome()
	{
		return "index";
	}
	
	
	
	@RequestMapping("/-")
	public String getAbout()
	{
		return "About";
	}
	@RequestMapping("/wall")
	public ModelAndView wall(Principal principal) {
		
		User user=userService.getUserByUsername(principal.getName());
		ModelAndView model = new ModelAndView("wall");
		model.addObject("user", user);
		return model;
	}
	
	
	@RequestMapping("/blog")
	public ModelAndView newBlog(Model m) {
		m.addAttribute("blog", new Blog());
		List<Blog> blogs = blogService.listBlogs();
		String json = new Gson().toJson(blogs);
		ModelAndView model = new ModelAndView("blog");
		model.addObject("blogs", json);
		return model;
	}
	
	@RequestMapping(value = "/blog/add",method=RequestMethod.POST)
	public String addUser(Model model,@Valid @ModelAttribute("blog") Blog b, BindingResult result, Principal principal) {

		if(result.hasErrors())
			return "blog";
		
		b.setUser(principal.getName());
		b.setDate(new Date());
		blogService.addBlog(b);
					
		return "redirect:/blog";
	
	}
	
	
	@RequestMapping("/chatPage")
	public ModelAndView chat() {
		ModelAndView model = new ModelAndView("chat");
		return model;
	}
	
	
	@MessageMapping("/chat")
	  @SendTo("/topic/message")
	  public OutputMessage sendMessage(Message message, Principal principal) {
	    return new OutputMessage(message, new Date(),principal.getName());
	  }
	
	@RequestMapping("/forum")
	public ModelAndView newForum(Model m) {
		m.addAttribute("forum", new Forum());
		List<Forum> forums = forumService.listForums();
		String json = new Gson().toJson(forums);
		ModelAndView model = new ModelAndView("forum");
		model.addObject("forums", json);
		return model;
	}
	
	@RequestMapping(value = "/forum/add",method=RequestMethod.POST)
	public String addForum(Model model,@Valid @ModelAttribute("forum") Forum f, BindingResult result, Principal principal) {

		if(result.hasErrors())
			return "forum";
		
		f.setUser(principal.getName());
		f.setDate(new Date());
		forumService.addForum(f);
					
		return "redirect:/forum";
	
	}

	
}
