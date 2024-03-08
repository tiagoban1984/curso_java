<%@page import="model.ModelLogin"%>
<%@page import="com.fasterxml.jackson.annotation.JsonCreator.Mode"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>


<body>
	<!-- Pre-loader start -->
	<jsp:include page="theme-loader.jsp"></jsp:include>
	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<jsp:include page="navbar.jsp"></jsp:include>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<jsp:include page="navbarmainmenu.jsp"></jsp:include>

					<div class="pcoded-content">
						<!-- Page-header start -->

						<jsp:include page="page-header.jsp"></jsp:include>

						<!-- Page-header end -->
						<div class="pcoded-inner-content">
							<!-- Main-body start -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">
										<div class="row">
											<div class="col-sm-12">
												<!-- Basic Form Inputs card start -->
												<div class="card">
													<div class="card-block">
														<h4 class="sub-title">Cadastro de usuários > Informe
															os dados</h4>

														<form class="form-material" enctype="multipart/form-data"
															action="<%=request.getContextPath()%>/ServletUsuarioContoller"
															method="post" id="formUser">
															<input type="hidden" name="acao" id="acao" value="">

															<div class="form-group form-default form-static-label">
																<input type="text" name="id" id="id"
																	class="form-control" readonly="readonly"
																	value="${modelLogin.id}"> <span
																	class="form-bar"></span> <label class="float-label">ID:</label>
															</div>

															<div class="form-group form-default ">
																<input type="text" name="nome" id="nome"
																	class="form-control" required="required"
																	value="${modelLogin.nome}"> <span
																	class="form-bar"></span> <label class="float-label">Nome:</label>
															</div>

															<div class="form-group form-default ">
																<input type="email" name="email" id="email"
																	class="form-control" required="required"
																	autocomplete="off" value="${modelLogin.email}">
																<span class="form-bar"></span> <label
																	class="float-label">E-mail:</label>
															</div>

															<div class="form-group form-default ">
																<select class="form-control"
																	aria-label="Default select example" name="perfil">
																	<option disabled="disabled">[Selecione o
																		Perfil]</option>

																	<option value="DIRETORIA"
																		<%ModelLogin modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("DIRETORIA")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Diretoria</option>
																	<option value="VENDAS"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("VENDAS")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Gestor
																		Vendas</option>
																	<option value="POSVENDAS"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("POSVENDAS")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Gestor
																		Pos-Vendas</option>
																	<option value="RH"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("RH")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>RH</option>
																	<option value="TREINAMENTO"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("TREINAMENTO")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Treinamento</option>
																	<option value="VNOVOS"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("VNOVOS")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Vendedor Novos</option>
																	<option value="VUSADOS"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("VUSADOS")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Vendedor Usados</option>
																	<option value="CONSULTORPV"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("CONSULTORPV")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Consultor Pos-vendas</option>
																	<option value="QUALIDADE"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("QUALIDADE")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Qualidade</option>
																	<option value="ADMINISTRATIVO"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("ADMINISTRATIVO")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Administrativo</option>
																	<option value="VD"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("VD")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Venda Direta</option>
																	<option value="LEAD"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("LEAD")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Lead</option>
																	<option value="GARANTIA"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("GARANTIA")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Garantia</option>
																	<option value="ENTREGA"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("ENTREGA")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Entrega</option>
																	<option value="AVALIACAO"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("AVALIACAO")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Avaliação</option>
																	<option value="RECEPCIONISTA"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("RECEPCIONISTA")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Recepcionista</option>
																	<option value="LIDERRECEP"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("LIDERRECEP")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Lider Recepção</option>
																</select> <label class="float-label">Perfil:</label>
															</div>
															
															
															<div class="form-group form-default ">
																<select class="form-control"
																	aria-label="Default select example" name="filial">
																	<option disabled="disabled">[Selecione a
																		Filial]</option>

																	<option value="MATRIZ"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getFilial().equals("MATRIZ")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Matriz</option>
																	<option value="ITAJAI"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getFilial().equals("ITAJAI")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Itajai</option>
																	<option value="BRUSQUE"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getFilial().equals("BRUSQUE")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Brusque</option>
																	<option value="ILHA"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getFilial().equals("ILHA")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Ilha</option>
																</select> <label class="float-label">Filial:</label>
															</div>
															

															<div class="form-group form-default ">
																<input type="text" name="login" id="login"
																	class="form-control" required="required"
																	autocomplete="off" value="${modelLogin.login}">
																<span class="form-bar"></span> <label
																	class="float-label">Login:</label>
															</div>
															<div class="form-group form-default ">
																<input type="password" name="senha" id="senha"
																	class="form-control" required="required"
																	autocomplete="off" value="${modelLogin.senha}">
																<span class="form-bar"></span> <label
																	class="float-label">Senha:</label>
															</div>


															<button type="button"
																class="btn btn-primary waves-effect waves-light"
																onclick="limparForm();">Novo</button>
															<button type="submit"
																class="btn btn-success waves-effect waves-light">Salvar</button>
															<button type="button"
																class="btn btm-info waves-effect waves-light"
																onclick="criarDeleteComAjax();">Excluir</button>
															<button type="button" class="btn btn-secondary"
																data-toggle="modal" data-target="#exampleModalUsuario">Pesquisar</button>
														</form>


													</div>
												</div>
											</div>
										</div>

										<span>${msg}</span>

										<div style="height: 300px; overflow: scroll;">

											<table class="table" id="tabelaresultadosview">
												<thead>
													<tr>
														<th scope="col">ID</th>
														<th scope="col">Nome</th>
														<th scope="col">Email</th>
														<th scope="col">Login</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items='${modelLogins}' var='ml'>
														<tr>
															<td><c:out value="${ml.id}"></c:out></td>
															<td><c:out value="${ml.nome}"></c:out></td>
															<td><c:out value="${ml.email}"></c:out></td>
															<td><c:out value="${ml.login}"></c:out></td>
															<td><a class="btn btn-success" href="<%= request.getContextPath() %>/ServletUsuarioContoller?acao=buscarEditar&id=${ml.id}">Ver</a></td>
														</tr>


													</c:forEach>
												</tbody>
											</table>
										</div>

										<nav aria-label="Page navigation example">
											<ul class="pagination">

												<%
												int totalPagina = (int) request.getAttribute("totalPagina");

												for (int p = 0; p < totalPagina; p++) {
													String url = request.getContextPath() + "/ServletUsuarioContoller?acao=paginar&pagina=" + (p * 5);
													out.print("<li class=\"page-item\"><a class=\"page-link\" href=\"" + url + "\">" + (p + 1) + "</a></li>");
												}
												%>


											</ul>
										</nav>

										<!-- Page-body end -->
										<div id="styleSelector"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<jsp:include page="javascriptfile.jsp"></jsp:include>

			<!-- Modal -->
			<div class="modal fade" id="exampleModalUsuario" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Pesquisar
								Usuários</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">

							<div class="input-group mb-3">
								<input type="text" class="form-control" placeholder="Nome"
									aria-label="nome" id="nomeBusca"
									aria-describedby="basic-addon2">
								<div class="input-group-append">
									<button class="btn btn-success" type="button"
										onclick="buscarUsuario();">Buscar</button>
								</div>
							</div>

							<div style="height: 300px; overflow: scroll;">

								<table class="table" id="tabelaresultados">
									<thead>
										<tr>
											<th scope="col">ID</th>
											<th scope="col">Nome</th>
											<th scope="col">Email</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
								</table>
							</div>

							<nav arial-label="Page navigation example">
								<ul class="pagination" id="ulPaginacaoUserAjax">
								</ul>
							</nav>
							<span id="totalResultados"></span>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fechar</button>
						</div>
					</div>
				</div>
			</div>

			<script type="text/javascript">
				function visualizarImg(fotoembase64, filefoto) {
					var preview = document.getElementById(fotoembase64);
					var fileUser = document.getElementById(filefoto).files[0];
					var reader = new FileReader();

					reader.onloadend = function() {
						preview.src = reader.result;
					};

					if (fileUser) {
						reader.readAsDataURL(fileUser);
					} else {
						preview.src = '';
					}
				}

				function verEditar(id) {

					var urlAction = document.getElementById('formUser').action;

					window.location.href = urlAction + '?acao=buscarEditar&id='
							+ id;

				}

				function buscaUserPagAjax(url) {

					var urlAction = document.getElementById('formUser').action;
					var nomeBusca = document.getElementById('nomeBusca').value;

					$
							.ajax(
									{
										method : "get",
										url : urlAction,
										data : url,
										success : function(response,
												textStatus, xhr) {

											var json = JSON.parse(response);

											$('#tabelaresultados > tbody > tr')
													.remove();
											$("#ulPaginacaoUserAjax > li")
													.remove();

											for (var p = 0; p < json.length; p++) {
												$('#tabelaresultados > tbody')
														.append(
																'<tr> <td>'
																		+ json[p].id
																		+ '</td> <td> '
																		+ json[p].nome
																		+ '</td> <td><button onclick="verEditar('
																		+ json[p].id
																		+ ')" type="button" class="btn btn-info">Ver</button></td></tr>');
											}

											document
													.getElementById('totalResultados').textContent = 'Resultados: '
													+ json.length;

											var totalPagina = xhr
													.getResponseHeader("totalPagina");

											for (var p = 0; p < totalPagina; p++) {

												var url = 'nomeBusca='
														+ nomeBusca
														+ '&acao=buscarUserAjaxPage&pagina='
														+ (p * 5);

												$("#ulPaginacaoUserAjax")
														.append(
																'<li class="page-item"><a class="page-link" href="#" onclick="buscaUserPagAjax(\''
																		+ url
																		+ '\')">'
																		+ (p + 1)
																		+ '</a></li>');

											}

										}

									})
							.fail(
									function(xhr, status, errorThrown) {
										alert('Erro ao buscar usuário por nome: '
												+ xhr.responseText);
									});
				}

				function buscarUsuario() {

					var nomeBusca = document.getElementById('nomeBusca').value;

					if (nomeBusca != null && nomeBusca != ''
							&& nomeBusca.trim() != '') { /*Validando que tem que ter valor pra buscar no banco*/

						var urlAction = document.getElementById('formUser').action;

						$
								.ajax(
										{

											method : "get",
											url : urlAction,
											data : "nomeBusca=" + nomeBusca
													+ '&acao=buscarUserAjax',
											success : function(response,
													textStatus, xhr) {

												var json = JSON.parse(response);

												$(
														'#tabelaresultados > tbody > tr')
														.remove();
												$("#ulPaginacaoUserAjax > li")
														.remove();

												for (var p = 0; p < json.length; p++) {
													$(
															'#tabelaresultados > tbody')
															.append(
																	'<tr> <td>'
																			+ json[p].id
																			+ '</td> <td> '
																			+ json[p].nome
																			+ '</td> <td><button onclick="verEditar('
																			+ json[p].id
																			+ ')" type="button" class="btn btn-info">Ver</button></td></tr>');
												}

												document
														.getElementById('totalResultados').textContent = 'Resultados: '
														+ json.length;

												var totalPagina = xhr
														.getResponseHeader("totalPagina");

												for (var p = 0; p < totalPagina; p++) {

													var url = 'nomeBusca='
															+ nomeBusca
															+ '&acao=buscarUserAjaxPage&pagina='
															+ (p * 5);

													$("#ulPaginacaoUserAjax")
															.append(
																	'<li class="page-item"><a class="page-link" href="#" onclick="buscaUserPagAjax(\''
																			+ url
																			+ '\')">'
																			+ (p + 1)
																			+ '</a></li>');

												}

											}

										})
								.fail(
										function(xhr, status, errorThrown) {
											alert('Erro ao buscar usuário por nome: '
													+ xhr.responseText);
										});

					}

				}

				function criarDeleteComAjax() {
					var urlAction = document.getElementById('formUser').action;

					if (confirm('Deseja realmente excluir os dados?')) {

						var idUser = document.getElementById('id').value;

						$.ajax({

							method : "get",
							url : urlAction,
							data : "id=" + idUser + '&acao=deletarajax',
							success : function(response) {

								limparForm();
								alert(response)
							}

						}).fail(
								function(xhr, status, errorThrown) {
									alert('Erro ao deletar usuário por id: '
											+ xhr.responseText);
								});

					}

				}

				function criarDelete() {

					if (confirm('Deseja realemnte excluir os dados?')) {

						document.getElementById("formUser").method = 'get';
						document.getElementById("acao").value = 'deletar';
						docmunet.getElementById("formUser").submit();

					}
				}

				function limparForm() {

					var elementos = document.getElementById("formUser").elements;

					for (p = 0; p < elementos.length; p++) {
						elementos[p].value = '';
					}
				}
			</script>
			</div>
			</div>
			
			
</body>

</html>
