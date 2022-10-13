package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.nt.beans.Employee;

public class EmployeeDAOImpl implements IEmployeeDAO {
	private static final String EMP_DETAILS_BY_DESG="SELECT EMPNO,ENAME,JOB,SAL FROM EMP WHERE JOB=?";
	private List<Employee> list;
	
	private Connection getPolledConnection() throws Exception{
		InitialContext ic=new InitialContext();
		DataSource ds=(DataSource)ic.lookup("java:/comp/env/dataSrc");
		Connection con=ds.getConnection();
		return con;
		
	}

	@Override
	public List<Employee> getEmployeeByDesg(String desg) throws Exception {
		try {
			Connection con=getPolledConnection();
			PreparedStatement ps=con.prepareStatement(EMP_DETAILS_BY_DESG);
			//set the query param
			ps.setString(1, desg);
			//execute the tehe query
			ResultSet rs=ps.executeQuery();
			
			if(rs!=null) {
				list=new ArrayList<Employee>();
				while(rs.next()) {
					Employee emp=new Employee();
					emp.setEmpno(rs.getInt(1));
					emp.setEname(rs.getString(2));
					emp.setDesg(rs.getString(3));
					emp.setBasicSalary(rs.getFloat(4));
					list.add(emp);
					
				}
				System.out.println("DAO"+list.size());
			}
			return list;
		}
		catch(SQLException se) {
			se.printStackTrace();
			throw se;
		}
		catch(Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

}
