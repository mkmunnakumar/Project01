package com.example.demo.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Table(name="emp_table")
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer  id ;
	private String name;
	private String email;
	private String dob;
	private Integer age;
	private double salary;
	private boolean status;
	
//	public Employee() {
//		super();
//	}

//	@Override
//	public String toString() {
//		return "Employee [id=" + id + ", name=" + name + ", email=" + email + ", dob=" + dob + ","
//				+ " age=" + age + ", salary=" + salary + ",status" + status + "]";
//	}
	
	
	
}
