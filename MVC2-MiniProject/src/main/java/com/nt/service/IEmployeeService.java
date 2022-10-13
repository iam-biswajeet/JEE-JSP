package com.nt.service;

import java.util.List;

import com.nt.beans.Employee;

public interface IEmployeeService {
	public List<Employee> fetchEmployeeByDesg(String desg) throws Exception;

}
