<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar Chamados</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<!-- Barra superior com os menus de navegação -->
	<c:import url="Menu.jsp" />
	
		<!-- Modal -->
	<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog"
		aria-labelledby="modalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Fechar">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="modalLabel">Excluir Fila</h4>
				</div>
				<div class="modal-body">Deseja realmente excluir este?</div>
				<div class="modal-footer">
					<form action="deletar_fila" method="post">
						<input type="hidden" name="id" id="id_excluir" />
						<button type="submit" class="btn btn-primary" name="acao"
							value="ExcluirFila">Sim</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Container Principal -->
	<div id="main" class="container">
		<h3 class="page-header">Consultar Chamados</h3>
		<form action="listar_chamados_exibir" method="post">
			<div class="row">
				<div class="form-group col-md-4">
					<label for="fila">Escolha a Fila:</label> <select
						class="form-control" name="id">
						<c:forEach var="fila" items="${filas}">
							<option value="${fila.id}">${fila.nome}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div id="actions" class="row">
				<div class="col-md-12">
					<button type="submit" class="btn btn-primary" name="acao"
						value="ListarChamadosExibir">Listar Chamados</button>
					<a href="index" class="btn btn-default">Cancelar</a>
				</div>
			</div>
			<div id="actions" class="row">
				<div class="col-md-12">
					<button type="submit" class="btn btn-primary" name="acao"
						value="FilaListarExibir">Listar Filas</button>
					<a href="index" class="btn btn-default">Cancelar</a>
				</div>
			</div>
		</form>
	</div>
	<div class="col-md-2">
		<a href="CadastrarFila" class="btn btn-primary pull-right h2">Nova
			Fila</a>
	</div>
	<div class="col-md-2">
		<a href="EditarFila" class="btn btn-primary pull-right h2">Editar
			Fila</a>
	</div>
		<div class="col-md-2">
		<button id="btn${fila.id }%>" type="button"
		class="btn btn-danger btn-xs" data-toggle="modal"
		data-target="#delete-modal" data-cliente="${fila.id }">Excluir</button>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
		<script type="text/javascript">
		$("#delete-modal").on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget); //botao que disparou a modal
			var recipient = button.data('fila');
			$("#id_excluir").val(recipient);
		});
</body>

</html>