package com.nt.service;

import java.util.List;

import com.nt.beans.Employee;
import com.nt.dao.EmployeeDAOImpl;
import com.nt.dao.IEmployeeDAO;

public class EmployeeServiceImpl implements IEmployeeService{
	private IEmployeeDAO empDAO;
	public EmployeeServiceImpl() {
		empDAO=new EmployeeDAOImpl();
	}
	@Override
	public List<Employee> fetchEmployeeByDesg(String desg) throws Exception {
		//get the employee List
		List<Employee> list=empDAO.getEmployeeByDesg(desg);
		//b.logic
		list.forEach(emp->{
			emp.setGrossSalary(emp.getBasicSalary()+(emp.getBasicSalary()*0.3f));
			emp.setNetSalary(emp.getGrossSalary()+(emp.getGrossSalary()*0.2f));
		}
		);
		System.out.println("service"+list.size());
		return list;
		
	}

}
