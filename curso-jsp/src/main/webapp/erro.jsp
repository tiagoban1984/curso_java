<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mensagem de Erro</title>
</head>
<body>
<h1>Mensagem de Erro, entre em contato com o setor de TI.</h1>
<%

 out.print(request.getAttribute("msg"));

%>


</body>
</html>