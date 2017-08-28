<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link  rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
<%
String message = "connecté en tant que" + request.getParameter("username");
%>
</head>
<body>
<%@include file="header.jsp" %>
<h3>login</h3>
<form method="get" action="">
    <!--  si action="" la page se rappelle elle meme -->
        username: <input name="username"  /> <br/>
        password: <input name="password" /> <br/>
        <input type="submit" value="login"/>
    </form>    <hr/>
    message= <b><%=message%></b>
<%@include file="footer.jsp" %>    
</body>
</html>