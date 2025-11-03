package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.model.User;
import com.project.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller

public class UserController {

	@Autowired
	UserService userService;
	String msg;

	@GetMapping("/")
	public String homePage() {
		return "index";
	}

	@GetMapping("/get-register")
	public String getRegisterPage() {
		return "register";
	}

	@GetMapping("/login")
	public String showLoginPage() {
		return "login"; // your login.jsp
	}

	@PostMapping("/verifyLogin")
	public String verifyLogin(@RequestParam String username, @RequestParam String password, HttpSession session,
	        Model model) {

	    User user = userService.getuserByUsernameAndPassword(username, password);

	    if (user != null) {
	        session.setAttribute("loggedInUser", user);
	        session.setAttribute("username", "user");

	       
	        session.setAttribute("preferedJobs", user.getPreferedJobs());
	        session.setAttribute("preferedLocation", user.getPreferedLocation());
	        session.setAttribute("preferedSalary", user.getPreferedSalary());

	        msg = username + ">> Login successfully....";
	        model.addAttribute("msg", msg);

	        if ("ADMIN".equalsIgnoreCase(user.getName())) {
	            return "index";
	        } else {
	            return "index";
	        }
	    }
	    msg = "Invalid Credentials";
	    model.addAttribute("msg", msg);
	    return "login";
	}


	@PostMapping("/add-user")
	public String adduser(@ModelAttribute User user, Model model) {
		boolean isAdded = userService.adduser(user);
		if (isAdded) {
			msg = "user register successfully";
		} else {
			msg = "Something went wrong...";
		}
		model.addAttribute("msg", msg);
		return "login";
	}

	@GetMapping("/get-all-users")
	public String getAlluser(HttpSession session, Model model) {
		String user = (String) session.getAttribute("logggedInUser");
		if (user == null) {
			model.addAttribute("msg", "Please Login First");
			return "login";
		}

		List<User> userList = userService.getAlluser();
		model.addAttribute("userList", userList);
		return "alluserDetails";
	}

	
	@GetMapping("/logout")
	public String logout(HttpSession session, Model model) {
		session.invalidate();
		model.addAttribute("msg", "You have logged out successfully!");
		return "login";
	}

}
