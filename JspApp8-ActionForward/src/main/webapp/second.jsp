<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    <h1>second.jsp</h1>
    <%
    String a=request.getParameter("a");
    int b=Integer.parseInt(request.getParameter("b"));
    out.println(a+"  "+b);
    %>