package com.kotkot.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kotkot.entry.UserBlop;
import com.kotkot.service.UserService;

@Controller
@Scope("session")
public class UserLogin {

	@Autowired
	private UserService userService;

	@Autowired(required = true)
	@Qualifier(value = "userService")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value = "/checkuser")
	public ModelAndView checkUser(
			@RequestParam(value = "email", required = false) String email,
			@RequestParam(value = "password", required = false) String password,
			HttpServletRequest request, HttpServletResponse response) {
		if (email == null || password == null) {
			try {
				System.out.println("ererrrrrrrrrrrror");
				response.sendRedirect("/Blog/login");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		List<UserBlop> the_user = userService.UsersEmailPassword(email,
				password);
		System.out.println(the_user.size());
		System.out.println("finsh ----------");

		if (the_user.size() == 1) {
			// success
			HttpSession session = request.getSession();
			session.setAttribute("current_user", the_user.get(0));
			UserBlop userBlop = (UserBlop) request.getSession().getAttribute(
					"current_user");
			try {
				response.sendRedirect("/Blog/Blogs");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;

		} else {
			ModelAndView modelAndView = new ModelAndView("loginform");
			modelAndView.addObject("mes2",
					"    ---  bleas make sure from Your Data");
			return modelAndView;
		}

	}

	@RequestMapping({ "/login" , "/"})
	public ModelAndView loginuser(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("current_user", null);
		session.invalidate();
		ModelAndView modelAndView = new ModelAndView("loginform");
		return modelAndView;

	}

}
