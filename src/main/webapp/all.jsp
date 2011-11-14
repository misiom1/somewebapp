<%@page import="com.example.somewebapp.service.PersonManager"%>
<%@page import="com.example.somewebapp.service.PersonManagerInMermory"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Person manager</title>
</head>
<body>	
	<h1>All persons</h1>
	<!-- Powinno być iterowane -->
	${personManager.allPersons}
	<br><br><br>
	
	<%
	PersonManager lista = new PersonManagerInMermory();
	//Iterator<Person> iterator = lista.iterator();
	List list = lista.getAllPersons();
	pageContext.setAttribute("lista", list);
	//ArrayList listaa = PersonManager.getAllPersons();
	int i =0;
	%>
	<table>
	<c:forEach var="l" items="${lista}">
	<tr><td>${l.name}</td><td>${l.yob}</td><td><a href="usun.jsp?id=<%=i%>">Usun</a></td><td><a href="edit.jsp?id=<%=i%>&name=${l.name}&yob=${l.yob}">Edytuj</a></td></tr>
	<% i++; %>
		</c:forEach>
		</table>
	<a href="add.jsp"> Add new person </a>
	<a href="all.jsp"> See all persons</a>
	
	
</body>
</html>
