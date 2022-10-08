

<h1>different implicit object class Name::</h1>
<hr>
<h2>
	request object class name::<%=request.getClass()%></h2>
<h2>
	response object class name::<%=response.getClass()%></h2>
<h2>
	page object class name::<%=page.getClass()%></h2>
<h2>
	pageContext object class name::<%=pageContext.getClass()%></h2>
<h2>
	config object class name::<%=config.getClass()%></h2>
<h2>
	application object class name::<%=application.getClass()%></h2>
<h2>
	out object class name::<%=out.getClass()%></h2>
<h2>
	session object class name::<%=session.getClass()%></h2>
<%!public void jspInit() {
		/* System.out.println("config object class Name::"+config.getClass());
		System.out.println("application object class Name::"+application.getClass());
		*/
		ServletConfig cg = getServletConfig();
		ServletContext sc = getServletContext();
		System.out.println(
				"ServletConfig object Class Name::" + cg.getClass() + "\nServletConfig HashCode::" + cg.hashCode());
		System.out.println(
				"ServletContext object Class Name::" + sc.getClass() + "\nServletContext HashCode::" + sc.hashCode());

	}%>
<h2>
	config object class name::<%=config.getClass()%>
</h2>
<h2>
	config object hashCode::<%=config.hashCode()%>
</h2>
<h2>
	application object class name::<%=application.getClass()%></h2>
<h2>
	application object hashCode::<%=application.hashCode()%></h2>
