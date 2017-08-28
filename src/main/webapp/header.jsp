<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%
Date d =new Date(); 
SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");

%>
<div class="entete">
   <img src="logo.png" width="40" height="40">
    <b>AIR Xxz</b> <i><%=df.format(d) %></i>
</div>