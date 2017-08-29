<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<link  rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>statut_resa</title>
</head>
<body>
<%@include file="header.jsp" %>
 <h3>réservation effectuée</h3>
 username: <b>${resa.username}</b> <br/>
 date: <i>${resa.date}</i> <br/>
 villeDepart: <b>${resa.villeDepart}</b> <br/>
 villeArrivee: <b>${resa.villeArrivee}</b> <br/>
 
<%@include file="footer.jsp" %>    
</body>
</html>