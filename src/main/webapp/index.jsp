<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body background="imagenes/tierra2.jpeg">

	<h2 style="color: white;">Login</h2>

<form action="login" method="post">
	<table>

		<tr>
			<td><Label style="color: white;">Usuario</Label></td>
			<td><input type="text" name="usuario"></td>
		</tr>

		<tr>
			<td><Label style="color: white;">Password</Label></td>
			<td><input type="password" name="password"></td>

		</tr>

		<tr>
			<td><Label></Label></td>
			<td><button type="submit">Entrar</button></td>
		</tr>

	</table>
</form>

	<table>

		<tr>
			<td><label style="color: white;"> ${respuesta} </label></td>
			<td></td>
		</tr>


		<tr>
			<td style="color: white;"><a href="creaCuenta.jsp">Crea cuenta nueva</a></td>
			<td style="color: white;"><a href="recuperar.jsp">Recuperar Password</a></td>
		</tr>

		<tr>
			<td style="color: white;"><a href="#">Entrar con cuenta de Facebook</a></td>
			<td style="color: white;"><a href="#">Entrar con cuenta de Google</a></td>
		</tr>
	</table>



</body>
</html>