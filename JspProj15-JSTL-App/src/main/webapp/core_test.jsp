


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*" %>
<c:set var="msg" value="hello " scope="session"/>
msg::<c:out value="${msg}"/><br>
 <c:if test="${param.name!=null}"><br>
<c:out value="${msg}"/> <c:out value="${param.name}"/><br>
</c:if> 
<c:remove var="msg"/><br>
msg::<c:out value="${msg}"/><br>
<%
/* List<String> list=new ArrayList<String>();
list.add("bapuni");list.add("raja");list.add("rama");list.add("shiba");
request.setAttribute("nameList",list); */
int no=5;
request.setAttribute("num",no);
%>
<%-- <c:forEach var="name" items="${nameList}">
${name},
</c:forEach> --%>
<br>
<c:choose>
<c:when test="${num>0}"><h2>${num} positive num</h2></c:when>
<c:when test="${num<0}"><h2>${num} negetive num</h2></c:when>
<c:otherwise><h2>${num}</h2></c:otherwise>
</c:choose>
<c:catch var="e">
<jsp:scriptlet>
java.util.Date date=null;
int year=date.getYear();
</jsp:scriptlet>>
</c:catch>
Exception is::${e}



