<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<link  rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
</head>
<%
String lienResa = "";
String lienLogin = "";
String username=(String) session.getAttribute("username");
if(username!=null){
	lienResa="param_resa.jsp";
}else{
	lienLogin = "login.jsp";
}
%>
<body>
<%@include file="header.jsp" %>
 <h1>(welcome) Compagnie-aerienne - username= <%=username%></h1>
 <ul>
   <li> <a   href="<%=lienLogin%>">login</a> </li>
   <li> <a href="<%=lienResa%>">reservation</a> </li>
 </ul>
<%@include file="footer.jsp" %>    
</body>
</html>