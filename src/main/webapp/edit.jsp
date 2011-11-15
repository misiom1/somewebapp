<%@page import="com.example.somewebapp.service.PersonManager"%>
<%@page import="com.example.somewebapp.service.PersonManagerInMermory"%>
<%@page import="com.example.somewebapp.domain.Person"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
PersonManager pm = (PersonManager) application.getAttribute("personManager");
Person p = pm.getPerson(Integer.parseInt(request.getParameter("id")));
Object o = pm.getPerson(Integer.parseInt(request.getParameter("id")));
p.getName();
%>
p: <%=o.toString() %>
        <form action="edytuj.jsp">
          <input type="text" name="name" value="<%=p.getName() %>" />
          <input type="text" name="yob" value="<%=p.getYob() %>" />
          <input type="hidden" value="<%=request.getParameter("id") %>" name="id"/>
          <input type="submit" value=" OK " />
        </form>
</body>
</html>