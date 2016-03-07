<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="displayError.jsp"%>
<%@ page import="service.*"%>
<%@ page import="beans.*, java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//typically the register is checked at login so we can avoid this logic here and use
	// ${registersrv.register} in the items tag directly
	Object o = application.getAttribute("registersrv");
	RegistrationService register = null;
	if(o == null){
		register = RegistrationServiceFactory.getRegistrationService();
		application.setAttribute("registersrv", register);
	}else{
		register = (RegistrationService)o;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Overview</title>
</head>
<body>
<c:if test="${not empty registersrv.register}">
	<h1>The students who are currently registered:</h1>
	<ol>
	<c:forEach var="s" items="${registersrv.register}">
		<li>${s.firstName} ${s.lastName }</li>
	</c:forEach>
	</ol>
</c:if>
<c:if test="${ empty registersrv.register}"><h1>No students registered for the moment.</h1></c:if>
</body>
</html>