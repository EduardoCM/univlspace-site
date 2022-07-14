<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Crear cuenta nueva</title>
</head>
<body background="imagenes/tierra.jpeg">

	<h1 style="color: white;">Crear cuenta nueva</h1>


	<form action="registrarUsuario" method="post">

		<table>

			<tr>
				<td><label style="color: white;">Nombre</label></td>
				<td><input type="text" name="nombre"></td>
			</tr>
			
			<tr>
				<td><label style="color: white;">Apellido Paterno</label></td>
				<td><input type="text" name="apellidoPaterno"></td>
			</tr>
			<tr>
				<td><label style="color: white;">Apellido Materno</label></td>
				<td><input type="text" name="apellidoMaterno"></td>
			</tr>
			<tr>
				<td><label style="color: white;">Email</label></td>
				<td><input type="text" name="email"></td>
			</tr>
			
			<tr>
				<td><label style="color: white;">Telefono</label></td>
				<td><input type="text" name="telefono"></td>
			</tr>
			
			<tr>
				<td><label style="color: white;">Pais</label></td>
				<td><input type="text" name="pais"></td>
			</tr>
			
			<tr>
				<td><label style="color: white;">Crear password</label></td>
				<td><input type="password" name="password"></td>
			</tr>
			
			<tr>
				<td></td>
				<td><button type="submit">Registrar Cuenta</button></td>
			</tr>


		</table>

	</form>


</body>
</html>