<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>JSTL - Java Standard Taglib</title>
	</head>
	<body>
	
		<c:if test="${not empty empresa}">
			Empresa ${ empresa } cadastrada com sucesso!
		</c:if>
	
		<br><br> Lista de Empresas: <br>

		<ul>
			<c:forEach items="${empresas}" var="empresa">
				<li> ${empresa.nome} </li>
			</c:forEach>
		</ul>
			
	</body>
</html>