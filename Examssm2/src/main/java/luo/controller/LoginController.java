package luo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import luo.service.CustomerService;
import luo.vo.Customer;

@Controller
public class LoginController {

	@Autowired
	private CustomerService customerService;

	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}

	@RequestMapping("/login")
	public String list(String first_name, HttpSession session) {
		if (first_name == null)
			return "/login.jsp";
		Customer customer = customerService.list(first_name);
		if (customer != null) {
			session.setAttribute("user", first_name);
			System.out.println(session.getAttribute("user"));
			return "/index.jsp";
		} else {
			return "/login.jsp";
		}
	}

	@RequestMapping("/all")
	public String list(ModelMap map) {
		map.addAttribute("list", customerService.list());
		return "/customer.jsp";// 表示转发
	}

	@RequestMapping("/exit")
	public String exit(HttpSession session) {
		if (session.getAttribute("user") != null) {
			session.setAttribute("user", null);
			return "/login.jsp";
		}
		return "/login.jsp";
	}
}