

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*,com.nt.beans.*" contentType="text/html"%>
<h2 style="color: red; text-align: center">Employee Details</h2>
<c:choose>
	<c:when test="${empDetails!=null}">
		<h2 style="color:blue;text-align:center">Employee Details With Desg ${param.desg}</h1>
		<table align="center"  bgcolor="blue">
			<tr>
				<th>empNo</th>
				<th>ename</th>
				<th>desg</th>
				<th>Basicsalary</th>
				<th>Gross Salary</th>
				<th>NetSalary</th>
			</tr>
			<c:forEach var="emp" items="${empDetails}">
				<tr>
					<td>${emp.empno}</td>
					<td>${emp.ename}</td>
					<td>${emp.desg}</td>
					<td>${emp.basicSalary}</td>
					<td>${emp.grossSalary}</td>
					<td>${emp.netSalary}</td>
				</tr>
			</c:forEach>
		</table>
	</c:when>
</c:choose>
<center><h3><a href="javascript:frames.print()">Print</a></h3></center>


