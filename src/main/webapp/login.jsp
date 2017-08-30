<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<html>
<head> 
<link  rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>

<%
String message ="";
String username = request.getParameter("username");
String password = request.getParameter("password");
if(username!=null && password!=null){
	if(!password.equals("pwd"+username)){
	   message = "mot de passe incorrect (pas pwdusername)" ;
	}else{
		session.setAttribute("username",username);
		message = "connecté en tant que " + username;
	}
}
boolean connecte=(Boolean) (session.getAttribute("username")!=null);
pageContext.setAttribute("connecte", connecte); //pour acces via syntaxe ${connecte} dans cette page
String msgColor = connecte ? "green" : "red";
%>
</head>
<body>
<%@include file="header.jsp" %>
<h3>login</h3>
<form method="post" action="">
    <!--  si action="" la page se rappelle elle meme -->
        username: <input name="username"  /> <br/>
        password: <input name="password" /> <br/>
        <input type="submit" value="login"/>
    </form>    <hr/>
    message= <span style="color:<%=msgColor%>"><b><%=message%></b></span>
    <hr/>
    <c:if test="${connecte}" >
        <a href="welcome.jsp">menu utilisateur connecté</a>
    </c:if>

 
<%@include file="footer.jsp" %>    
</body>
</html>