package com.example.demo.controller;

import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.entity.Employee;
import com.example.demo.service.EmployeeService;

@Controller
public class EmpController {
	@Autowired
	private EmployeeService service;
	
	 public EmpController(EmployeeService service) {
	        this.service = service;
	    }

//	    @GetMapping("/welcome")
//	    public ModelAndView viewBooks() {
//	    	ModelAndView mv = new ModelAndView();
//	        mv.addObject("employee", service.getAllEmp());
//	        return mv;
//	    }
	@GetMapping("/")
	public ModelAndView home()
	{	
		List<Employee> emp= service.getAllEmp();
		ModelAndView mv = new ModelAndView();
		mv.addObject("emp",emp);
		//mv.addObject("model",model);
		mv.setViewName("welcome");
		return mv;	
	}
	@GetMapping("/add_emp")
	public String addEmpForm()
	{	
		return "Add_Emp";
	}
	
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable Integer id, Model m)
	{
		Employee e= service.getEmpById(id);
		m.addAttribute("emp",e);	
		return "edit";
	}
	
	 @PostMapping("/update")
	public String updateEmp(@ModelAttribute Employee e, HttpSession session) throws ParseException
	{
		service.EmpAdd(e);
		session.setAttribute("msg","Employee data update Sucessfully...");
		return "redirect:/";	 
	}
	 
	 @GetMapping("/delete/{id}")
	 public String deleteEmp(@PathVariable Integer id,HttpSession session)
	 {
		 service.deleteEmp(id);
		 session.setAttribute("msg","Employee data delete Sucessfully...");
		 return "redirect:/"; 
	 }
	
	@PostMapping("/register")
	public String EmpRegistor(@ModelAttribute Employee e,HttpSession session) throws ParseException
	{
		System.out.println(e);
		service.EmpAdd(e);
		session.setAttribute("msg","Employee data Added succesfully...");
		return "redirect:/";
	}
}
