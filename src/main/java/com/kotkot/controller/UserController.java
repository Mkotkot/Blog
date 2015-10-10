package com.kotkot.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kotkot.entry.UserBlop;
import com.kotkot.service.UserService;

@Controller
@Scope("session")
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired(required = true)
	@Qualifier(value = "userService")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@InitBinder
	public void intitbinder(WebDataBinder binder) {
		// binder.setDisallowedFields(new String [] {"datee"});
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		binder.registerCustomEditor(Date.class, "dateOfBirth",
				new CustomDateEditor(dateFormat, false));
		// binder.registerCustomEditor(String.class, "firstname" , new
		// StudentValidate());
	}

	@RequestMapping(value = "/createNewUser")
	public ModelAndView getFormUser() {
		ModelAndView modelandview = new ModelAndView("newuserform");
		return modelandview;
	}

	@RequestMapping(value = "/user_data")
	public ModelAndView userdata(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("current_user") != null) {
			ModelAndView modelandview = new ModelAndView("userdate");
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

	
	@RequestMapping(value = "/insertUser.html", method = RequestMethod.POST)
	public ModelAndView insertUser(@ModelAttribute("us") UserBlop us,
			BindingResult bindingResult , HttpServletResponse response) {

		if (bindingResult.hasErrors()) {
			ModelAndView modelAndView = new ModelAndView("newuserform");
			return modelAndView;

		} else {
			this.userService.addUser(us);
		}

		ModelAndView modelandview = new ModelAndView("loginform");
		modelandview.addObject("mes", "Congrats your account created successfully");

		return modelandview;
	}
	
	@RequestMapping(value = "/updateUser.html", method = RequestMethod.POST)
	public ModelAndView updateUser(@ModelAttribute("us") UserBlop us,
			BindingResult bindingResult  , HttpServletRequest request) {

		if (bindingResult.hasErrors()) {
			ModelAndView modelAndView = new ModelAndView("userdate");
			return modelAndView;

		} else {
			
			HttpSession session =  request.getSession() ;
			UserBlop  old_user = (UserBlop) session.getAttribute("current_user");
			us.setId(old_user.getId());
			this.userService.updateUser(us);
			session.removeAttribute("current_user");
			session.setAttribute("current_user", us);
		}

		ModelAndView modelandview = new ModelAndView("plolist");
		return modelandview;
	}
	
	

}
