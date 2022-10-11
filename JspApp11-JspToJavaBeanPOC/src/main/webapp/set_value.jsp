<%@ page import ="com.nt.beans.*"%>
<!-- create bean class obj and keep it in specified scope -->
<jsp:useBean id="st" class="com.nt.beans.StudentBean" scope="session"/>
<!--  set values to bean properties-->
<%-- <jsp:setProperty name="st" property="sid" value="1001"/>
<jsp:setProperty name="st" property="sname" value="rama"/>
<jsp:setProperty name="st" property="sadd" value="Badadanda"/>
<jsp:setProperty name="st" property="savg" value="67.89f"/> --%>

<%-- <jsp:setProperty name="st" property="sid" param="sid"/>
<jsp:setProperty name="st" property="sname" param="sname"/>
<jsp:setProperty name="st" property="sadd" param="sadd"/>
<jsp:setProperty name="st" property="savg" param="savg"/> --%>
<jsp:setProperty name="st" property="*" />
<h1>values are set to bean property</h1>