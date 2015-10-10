package com.kotkot.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kotkot.entry.Blop;
import com.kotkot.entry.UserBlop;
import com.kotkot.service.BlogService;
import com.kotkot.service.UserService;

@Controller
@Scope("session")
public class BlogController {

	@Autowired
	private BlogService blogService;
 
	@Autowired(required = true)
	@Qualifier(value = "blogService")
	public void setBlogService(BlogService blogService) {
		this.blogService = blogService;
	}
	
	

	@RequestMapping(value = "/searchBlog.html", method = RequestMethod.GET)
	public ModelAndView searchBorBlog(@RequestParam String titel, HttpServletRequest request , HttpServletResponse response) {

		HttpSession session = request.getSession();
		UserBlop userBlop = (UserBlop) session.getAttribute("current_user");


		List<Blop> blogList =  this.blogService.blogSearchResult(titel);

		System.out.println(blogList.size());
		ModelAndView modelandview = new ModelAndView("plolist");
		modelandview.addObject("listblogs", blogList);
		if (blogList.size() == 0 ){
			modelandview.addObject("noblog", "There is no Blog relative to this titel ... "+ titel );
		}
		return modelandview;
	}

	
	@RequestMapping(value = "/NewBlog")
	public ModelAndView getLoginview(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("current_user") != null) {
			ModelAndView modelandview = new ModelAndView("mynewblog");
			return modelandview;
		} else {
			try {
				response.sendRedirect("/Blog/login");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
		}
	}

	@RequestMapping(value = "/insertBlog.html", method = RequestMethod.POST)
	public ModelAndView succssBlopAdd(@RequestParam String titel,
			@RequestParam String subject, HttpServletRequest request , HttpServletResponse response) {

		HttpSession session = request.getSession();
		UserBlop userBlop = (UserBlop) session.getAttribute("current_user");

		Blop blog = new Blop();
		blog.setTitel(titel);
		blog.setSubject(subject);
		blog.setBlopDate(new Date());
		blog.setUserBlop(userBlop);

		this.blogService.addBlog(blog);

		ModelAndView modelandview = new ModelAndView("mybloglist");
		try {
			response.sendRedirect("/Blog/Blogs");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return modelandview;
	}
	
	
	
	
	

	@RequestMapping(value = "/BlogData/{id}")
	public ModelAndView getoneblog(HttpServletRequest request,
			HttpServletResponse response, @PathVariable int id) {
		HttpSession session = request.getSession();
		ModelAndView modelAndView;
		if (session.getAttribute("current_user") != null) {
			UserBlop userBlop = (UserBlop) session.getAttribute("current_user");
			modelAndView = new ModelAndView("updateplog");
			Blop blog = blogService.getOneBlog(id, userBlop);
			if (blog != null) {
				System.out.println("blog  id by that   found  ------------  ");
				modelAndView.addObject("blog", blog);
				session.setAttribute("old_blog", blog);
				return modelAndView;
			} else {
				System.out
						.println("blog null ther is no id by that  ---------  ");
				modelAndView = new ModelAndView("loginform");
				modelAndView.addObject("msg", "errerrrrrrrrrrrrrrrrrr message");
				return modelAndView;
			}

		} else {
			try {
				response.sendRedirect("/Blog/login");

				System.out
						.println("no user bles check user login   ------------  ");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
		}
	}

	@RequestMapping(value = "/deleteBlog/{id}")
	public ModelAndView deleteOneBlog(HttpServletRequest request,
			HttpServletResponse response, @PathVariable int id) {
		HttpSession session = request.getSession();
		ModelAndView modelAndView;
		if (session.getAttribute("current_user") != null) {
			modelAndView = new ModelAndView("mybloglist");
			blogService.deleteBlog(id);

			try {
				response.sendRedirect("/Blog/Blogs");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return modelAndView;

		} else {
			try {
				response.sendRedirect("/Blog/login");

				System.out
						.println("no user bles check user login  in delete   ------------  ");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
		}
	}

	@RequestMapping(value = "/Blogs")
	public ModelAndView userBloglLst(UserBlop userBlop,
			HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		userBlop = (UserBlop) session.getAttribute("current_user");
		if (session.getAttribute("current_user") != null) {
			ModelAndView modelAndView = new ModelAndView("mybloglist");
			modelAndView.addObject("_user", userBlop);
			modelAndView
					.addObject("listblogs", blogService.userBlogs(userBlop));
			return modelAndView;
		} else {
			try {
				response.sendRedirect("/Blog/login");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
		}
 
	}

	@RequestMapping(value = "/updateblog.html", method = RequestMethod.POST)
	public ModelAndView updateBlog(@RequestParam String titel,
			@RequestParam String subject, HttpServletRequest request  , HttpServletResponse response) {

		Blop new_blog = new Blop();
		HttpSession session = request.getSession();
		Blop old_blob = (Blop) session.getAttribute("old_blog");
		new_blog = old_blob;
		new_blog.setSubject(subject);
		new_blog.setTitel(titel);
		this.blogService.updateBlog(new_blog);

		ModelAndView modelandview = new ModelAndView("plolist");
		try {
			response.sendRedirect("/Blog/Blogs");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return modelandview;
	}

}
