package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.entity.Employee;
import com.example.demo.service.EmployeeService;

@Controller		
public class EmpController {
	@Autowired
	private EmployeeService service;
	@GetMapping("/")
	public String home(Model m)
	{
		
		List<Employee> emp= service.getAllEmp();
		m.addAttribute("emp",emp);
		return "index";
		
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
	public String updateEmp(@ModelAttribute Employee e, HttpSession session)
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
	public String EmpRegistor(@ModelAttribute Employee e,HttpSession session)
	{
		System.out.println(e);
		service.EmpAdd(e);
		session.setAttribute("msg","Employee data Added succesfully...");
		return "redirect:/";
	}
}
