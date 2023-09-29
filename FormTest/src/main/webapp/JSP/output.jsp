<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><p>
				<b>Nombre: </b>
				<%=request.getParameter("Nombre")%>
			</p></li>
		<li><p>
				<b>Apellidos: </b>
				<%=request.getParameter("apellidos")%>
			</p></li>
		<li><p>
				<b>Correo: </b>
				<%=request.getParameter("mail")%>
			</p></li>
		<li><p>
				<b>Genero: </b>
				<%=request.getParameter("genero")%>
			</p></li>
		<li><p>
				<b>Lenguajes: </b>
				<%
				String basic = "";
				String c = "";
				String html = "";
				String java = "";
				out.print(basic = (request.getParameter("basic")) == null ? "" : "basic \t");
				out.print(c = (request.getParameter("c")) == null ? "" : "c \t");
				out.print(html = (request.getParameter("html")) == null ? "" : "html \t");
				out.print(java = (request.getParameter("java")) == null ? "" : "java");
				%>
			
		<li><p>
				<b>Idiomas</b>
				<%
				String[] idiomas = request.getParameterValues("idiomas");
				if (idiomas != null) {
					for (String idioma : idiomas) {
				%>
				<%=idioma%>
				<%
				}
				}
				%>
			</li>

		<li><p>
				<b>Comentarios: </b>
				<%=request.getParameter("comentario")%>
			</p></li>
	</ul>
</body>
</html>