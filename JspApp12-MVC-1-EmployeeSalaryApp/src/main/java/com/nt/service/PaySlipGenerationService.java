package com.nt.service;

import com.nt.beans.Employee;

public class PaySlipGenerationService {
	
	public void generatePaySlip(Employee emp){
		//calculate net salary and gross salary
		float grossSalary=emp.getBasicSalary()+(float)(emp.getBasicSalary()*0.05);
		float netSalary=grossSalary-(float)(grossSalary*0.02);
		//set property
		emp.setGrossSalary(grossSalary);
		emp.setNetSalary(netSalary);
	}

}
