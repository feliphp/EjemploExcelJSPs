<%@page errorPage="/WEB-INF/manejoErrores.jsp" %>
<%@page import="utilerias.Conversiones, java.util.Date" %>
<%@ page contentType="aplication/vnd.ms-excel" %>
<%
String nombreArchivo="reporte.xls";
response.setHeader("Content-Disposition", "inline; filename="+ nombreArchivo);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reporte de Excel</title>
</head>
<body>
<h1>Reporte de Excel</h1>
<br>
<table border="1">
<tr>
	<th>Curso</th>
	<th>Descripci�n</th>
	<th>Fecha Inicio</th>
</tr>
<tr>
            <td>1. Fudamentos de Java</td>
            <td>Aprenderemos la sintaxis b�sica de Java</td>
            <td><%= Conversiones.format("500") %></td>
 </tr>
           <tr>
            <td>2. Programaci�n con Java</td>
            <td>Pondremos en pr�ctica conceptos de
              la Programaci�n Orientada a Objetos
            </td>
            <td><%= Conversiones.format( new Date() ) %></td>
          </tr>
</table>
</html>