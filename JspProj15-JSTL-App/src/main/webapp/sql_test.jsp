<%@ page language="java" contentType="text/html; charset=UTF-8"
    %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:xe" user="c##biswajit" password="2538"/>
<sql:query var="rs" sql="SELECT EMPNO,ENAME,SAL FROM EMP" dataSource="${ds}"/>
<c:forEach var="emp" items="${rs.rows}">
${emp.EMPNO}||${emp.ENAME}||${emp.SAL}<br><br>
</c:forEach>
<sql:update var="count" sql="UPDATE EMP SET SAL=SAL+500 WHERE JOB=?" dataSource="${ds}">
<sql:param>CLERK</sql:param>
</sql:update>
no of row affected::${count}