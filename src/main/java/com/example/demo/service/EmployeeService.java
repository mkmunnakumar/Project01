package com.example.demo.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Employee;
import com.example.demo.repository.EmpRepo;

@Service
public class EmployeeService {

	@Autowired
	private EmpRepo repo;

	public void EmpAdd(Employee e) throws ParseException {
		Date dt = new Date();
		Date dob= new SimpleDateFormat("yyyy-mm-dd").parse(e.getDob());
		System.out.println(dob+": dob");
		int age = dt.getYear() - dob.getYear();
		e.setAge(age);
		repo.save(e);
	}

	public List<Employee> getAllEmp() {
		return repo.findAll();
	}

	public Employee getEmpById(Integer id) {
		Optional<Employee> op = repo.findById(id);
		if (op.isPresent()) {
			return op.get();
		}
		return null;

	}

	public void deleteEmp(Integer id) {
		repo.deleteById(id);
	}	
}
