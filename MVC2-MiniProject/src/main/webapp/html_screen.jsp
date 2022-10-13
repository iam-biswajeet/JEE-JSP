


<%@page import="java.util.*,com.nt.beans.*" contentType="text/html"%>
<h2 style="color: red; text-align: center">Employee Details</h2>
<%
String desg=request.getParameter("desg");
List<Employee> list=(List<Employee>)request.getAttribute("empDetails");
%>
<%System.out.println("html"+list.size());%>
<%
int count=1;

if(list!=null && list.size()!=0){%>


<h2 style="color: red; text-align: center">
	Employee Details of Desg
	<%=desg %></h2>
<table align="center" bgcolor="center">
	<tr>
		<th>Serial No</th>
		<th>EmpNo</th>
		<th>Ename</th>
		<th>Job</th>
		<th>Basic Salary</th>
		<th>Gross Salary</th>
		<th>Net Salary</th>
	</tr>
<%
int i=1;
for(Employee emp:list){
%>
<tr>
<td><%=i++ %></td>
<td><%=emp.getEmpno() %></td>
<td><%=emp.getEname()%></td>
<td><%=emp.getDesg()%></td>
<td><%=emp.getDesg()%></td>
<td><%=emp.getBasicSalary()%></td>
<td><%=emp.getGrossSalary() %></td>
<td><%=emp.getNetSalary() %></td>
</tr>
<%
}
%>
</table>
<%}
else{
%>
<h2 style="color:red;text-align:center">Record Not found</h2>
<%
}
%>
<center><a href="JavaScript:printPage()">print</a></center>
<script language="JavaScript">
function printPage(){
	frame.focus();
	frame.print();
}
</script>