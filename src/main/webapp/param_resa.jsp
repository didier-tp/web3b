<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head> 
<link  rel="stylesheet" href="styles.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>param_resa</title>
</head>
<body>
<%@include file="header.jsp" %>
 <h3>nouvelle réservation</h3>
<form method="get" action="ServletResa">
        depart: <select name="villeDepart">
                  <option>Paris</option><option>Toulouse</option><option>Nice</option>
                </select> <br/>
        arrivee: <select name="villeArrivee">
                  <option>Toulouse</option><option>Paris</option><option>Nice</option>
                </select> <br/>
        date: <input name="date" type="date"/> <br/>
        <input type="submit" value="reserver"/>
    </form>
 
<%@include file="footer.jsp" %>    
</body>
</html>