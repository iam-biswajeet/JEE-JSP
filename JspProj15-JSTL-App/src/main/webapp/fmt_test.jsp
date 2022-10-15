<%@page contentType="text/html;" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:setLocale value="hi_IN"/>
<fmt:formatNumber var="sal" value="4500" type="currency"/>
${sal}<br>
<fmt:bundle basename="com/nt/commoms/app"/>
<fmt:message var="message" key="per.msg" />
<br><b>${message}</b>
