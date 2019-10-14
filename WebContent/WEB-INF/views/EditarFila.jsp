<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cadastros</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Barra superior com os menus de navegacao -->
    <!-- Container Principal -->
    	<c:import url="Menu.jsp" />
    <div id="main" class="container">
       <h3 class="page-header">Editar fila</h3>
       <!-- Formulario de Login -->
        <form action="editar_fila" method="post">
				<div class="row col-md-12">
				<div class="form-group">
					<div class="input-group col-md-4">
					   <div class="input-group-addon"><span class="glyphicon glyphicon-option-horizontal" aria-hidden="true"></span></div> 
					   	<input type="text" name="fila" id="fila" class="form-control" maxlength="60" placeholder="Nome da Fila" required/>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group col-md-4">
					<label for="arquivo">Selecione um arquivo para carregar:</label>
					   <input type="file" name="file" id="arquivo" />
					</div>
				</div>
				</div>
				<div class="row col-md-12">
					<button type="submit" class="btn btn-primary" name="acao" value="listar_filas_exibir"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Cadastrar Fila</button>
				</div>
			</form>   
			</div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>