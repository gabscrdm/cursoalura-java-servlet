<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/entrada" var="linkEntradaServlet" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Alterar Empresa</title>
	</head>
	<body>
	
		<c:import url="logout-parcial.jsp" />
	
		<form action="${linkEntradaServlet}" method="post">
			
			Nome: <input type="text" name="nome" value="${empresa.nome}">
			<input type="hidden" name="id" value="${empresa.id}">
			<input type="hidden" name="acao" value="AlteraEmpresa">
			<input type="submit">
		</form>
	
	</body>
</html>