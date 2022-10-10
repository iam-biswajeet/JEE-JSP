<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

     <% 
    int x=10;
   
    %>
    <h1>first.jsp</h1>
    <jsp:forward page="/second.jsp">
    <jsp:param name="a" value="rama"/>
    <jsp:param name="b" value="<%=x%>"/>
    </jsp:forward>
    <h1>end of first.jsp</h1>
   
     