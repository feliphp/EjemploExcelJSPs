<%@page isErrorPage="true" %>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manejor Errores</title>
<script type="text/javascript" src="<%= request.getContextPath() %>/recursos/funciones.js"></script>
</head>
<body>
<h1>Manejo de Errores</h1>
<br>
<br>
Ocurrio un Error: <%= exception.getMessage() %>
<br>
<br>
<a href="<%= request.getContextPath() %>/index.html">Regresar al inicio</a>
<br>
<br>
<a href="#" onClick="cambio('mensaje1')">Ver Detalles</a>
<div id="mensaje1" style="position:relative;visibility: hidden">
	<PRE>
		<% exception.printStackTrace(new PrintWriter(out));  %>
	</PRE>
</div>
</body>
</html>