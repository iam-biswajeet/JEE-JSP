


<h1 style="color:red;text-align:center">b.jsp</h1>
page scope attribute:: <%=pageContext.getAttribute("attr1") %>
page scope attribute:: <%=pageContext.getAttribute("attr2",pageContext.REQUEST_SCOPE) %>
page scope attribute:: <%=pageContext.getAttribute("attr3",pageContext.SESSION_SCOPE) %>
page scope attribute:: <%=pageContext.getAttribute("attr4",pageContext.APPLICATION_SCOPE) %>
<jsp:forward page="c.jsp"/>
