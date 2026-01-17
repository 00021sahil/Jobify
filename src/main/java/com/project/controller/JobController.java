package com.project.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.model.Job;
import com.project.model.User;
import com.project.service.EmailService;
import com.project.service.JobService;

import jakarta.servlet.http.HttpSession;

@Controller
public class JobController {

	@Autowired
	private JobService jobService;

	@Autowired
	private EmailService emailService;

	String msg;

	// ================= ADD JOB (ADMIN) =================

	@GetMapping("/add-job")
	public String showAddJobForm(HttpSession session, Model model) {
		User user = (User) session.getAttribute("loggedInUser");

		if (user != null && "admin".equalsIgnoreCase(user.getName())) {
			return "addJob";
		} else {
			model.addAttribute("msg", "Access Denied! Only Admin can access Add Job page.");
			return "index";
		}
	}

	@PostMapping("/add-job")
	public String addJob(Job job, HttpSession session, Model model) {
		User user = (User) session.getAttribute("loggedInUser");

		if (user != null && "admin".equalsIgnoreCase(user.getName())) {
			jobService.save(job);
			model.addAttribute("msg", "Job added successfully!");
			return "addJob";
		} else {
			model.addAttribute("msg", "Access Denied! Only Admin can add jobs.");
			return "index";
		}
	}

	// ================= VIEW JOBS =================

	@GetMapping("/see-allJobs")
	public String getAllJobs(HttpSession session, Model model) {
		User user = (User) session.getAttribute("loggedInUser");
		if (user == null) {
			return "login";
		}

		List<Job> allJobs = jobService.seeAllJobs();
		String preferedJobs = user.getPreferedJobs();

		List<Job> filteredJobs = new ArrayList<>();
		for (Job job : allJobs) {
			boolean match = true;

			if (preferedJobs != null && job.getJobTitle() != null
					&& !job.getJobTitle().toLowerCase().contains(preferedJobs.toLowerCase())) {
				match = false;
			}

			if (match) {
				filteredJobs.add(job);
			}
		}

		model.addAttribute("jobs", filteredJobs);
		return "allJobDetails";
	}

	// ================= APPLY JOB =================

	@GetMapping("/applyJob")
	public String showApplyJobPage() {
		return "applyJob"; // applyJob.jsp
	}

	@PostMapping("/applyJob")
	public String applyJob(@RequestParam String email) {

	    emailService.sendApplicationMail(email);

	    return "redirect:/see-allJobs";
	}

}
