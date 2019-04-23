<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Livro de java, Android, iPhone, Ruby, PHP e muito mais - Casa do C�digo</title>
</head>
<body>

	<h1>Lista de Produtos</h1>

	<div>${sucesso }</div>

	<table>
		<tr>
			<td>T�tulo</td>
			<td>Descri��o</td>
			<td>P�ginas</td>
		</tr>
		<c:forEach items="${produtos }" var="produto">
			<tr>
				<td>
					<a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }"> ${produto.titulo }</a>
				</td>
				<td>${produto.descricao }</td>
				<td>${produto.paginas }</td>
			</tr>
		</c:forEach>
	</table>
		
</body>
</html>