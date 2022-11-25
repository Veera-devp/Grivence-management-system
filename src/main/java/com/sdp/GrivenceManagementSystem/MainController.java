package com.sdp.GrivenceManagementSystem;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@GetMapping("/")
	public String home() {
		return "index";
	}

	@GetMapping("/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("about");

		return mv;
	}

	@GetMapping("/service")
	public ModelAndView service() {
		ModelAndView mv = new ModelAndView("services");

		return mv;
	}

	@GetMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("login");

		return mv;
	}

	@GetMapping("/register")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("register");

		return mv;
	}
	@GetMapping("/student-dashboard")
	public ModelAndView student() {
		ModelAndView mv = new ModelAndView("student");

		return mv;
	}
	@GetMapping("/student-dashboard/complaint-upload")
	public ModelAndView complaint() {
		ModelAndView mv = new ModelAndView("complaint-upload");

		return mv;
	}
	@GetMapping("/student-dashboard/complaint-update")
	public ModelAndView complaintupdate() {
		ModelAndView mv = new ModelAndView("complaint-update");

		return mv;
	}
	@GetMapping("/student-dashboard/complaint-delete")
	public ModelAndView complaintdelete() {
		ModelAndView mv = new ModelAndView("complaint-delete");

		return mv;
	}
	@GetMapping("/adminLogin")
	public ModelAndView adminLogin() {
		ModelAndView mv = new ModelAndView("adminLogin");

		return mv;
	}
	@GetMapping("/adminpage")
	public ModelAndView adminpage() {
		ModelAndView mv = new ModelAndView("adminpage");

		return mv;
	}
	@GetMapping("/admin-dashboard")
	public ModelAndView admindashboard() {
		ModelAndView mv = new ModelAndView("admindash");

		return mv;
	}
}