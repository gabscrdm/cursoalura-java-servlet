<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/alteraEmpresa" var="linkServletNovaEmpresa" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Alterar Empresa</title>
	</head>
	<body>
	
		<form action="${linkServletNovaEmpresa}" method="post">
			
			Nome: <input type="text" name="nome" value="${empresa.nome}">
			<input type="hidden" name="id" value="${empresa.id}">
			<input type="submit">
		</form>
	
	</body>
</html>