<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<html>
<head> 
<link  rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
</head>
<%
String username=null;
String deconnexion = request.getParameter("deconnexion");
if(deconnexion!=null){
	session.invalidate();
}else{
	username=(String) session.getAttribute("username");
}
String visibilityResa = "hidden";
String visibilityLogin = "hidden"; 
boolean connecte=(Boolean) (username!=null);
pageContext.setAttribute("connecte", connecte); //pour acces via syntaxe ${connecte} dans cette page
if(username!=null){
	visibilityResa="visible";
}else{
	visibilityLogin = "visible";
}
%>
<body>
<%@include file="header.jsp" %>
 <h1>(welcome) Compagnie-aerienne </h1>
 <b>
 <c:if test="${connecte}" >
 	utilisateur connecté : <%=username%> <br/>
 	<form method="get" action="">
 	   <input type="submit" name="deconnexion" value="deconnexion" />
 	</form>
 </c:if>
 <c:if test="${!connecte}" >
 	utilisateur non connecté .
 </c:if>
 </b>
 <hr/>
 <ul>
   <li style="visibility:<%=visibilityLogin%>"> <a href="login.jsp">login</a> </li>
   <li style="visibility:<%=visibilityResa%>"> <a href="param_resa.jsp">reservation</a> </li>
 </ul>
<%@include file="footer.jsp" %>    
</body>
</html>