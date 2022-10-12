

<!-- create java bean objecyt -->
<jsp:useBean id="emp" class="com.nt.beans.Employee" scope="request"/>
<!-- set Property -->
<jsp:setProperty name="emp" property="*"/>
<!-- create Service() class object -->
<jsp:useBean id="service" class="com.nt.service.PaySlipGenerationService" scope="application"/>
<%
service.generatePaySlip(emp);
%>
<!--  read the input from bean class object and display to browser-->
<h1 style="color:red;text-align:center">Employee PaySlip Report</h1>
<table align="center" bgcolor="blue" >
<tr>
<td>Employee Name::</td>
<td><%=emp.getEname() %></td>
</tr>
<tr>
<td>Employee Address::</td>
<td><%=emp.getEaddrs() %></td>
</tr>
<tr>
<td>Employee Basic Salary::</td>
<td><%=emp.getBasicSalary() %></td>
</tr>
<tr>
<td>Employee Gross Salary::</td>
<td><%=emp.getGrossSalary() %></td>
</tr>
<tr>
<td>Employee Net Salary::</td>
<td><%=emp.getNetSalary() %></td>
</tr>
</table>
