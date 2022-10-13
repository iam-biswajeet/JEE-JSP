

<%@page session="true" %>
<%
pageContext.setAttribute("attr1", "val1");
pageContext.setAttribute("attr2","val2",pageContext.REQUEST_SCOPE);
pageContext.setAttribute("attr3","val3",pageContext.SESSION_SCOPE);
pageContext.setAttribute("attr4","val4",pageContext.APPLICATION_SCOPE);
%>
<jsp:forward page="get_value.jsp" />
<h1>values are set</h1>