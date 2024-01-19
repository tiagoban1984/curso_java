<%@page import="model.ModelAvaliar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>
<jsp:include page="theme-loader.jsp"></jsp:include>

<body>
	<!-- Pre-loader start -->

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


												<div class="card"></div>
												<div class="card-block"></div>
												<span id="msg">${msg}</span>
												<div class="alert alert-success" role="alert">
												  <h4 class="alert-heading">Atenção!</h4>
												  <p>Para o preenchimento correto da avaliação, avalie conforme a escala de 1 a 5:</p>
												  <hr>
												  <p class="mb-0">Nota 1: Muito Abaixo da Expectativa.</p>
												  <p class="mb-0">Nota 2: Abaixo da Expectativa.</p>
												  <p class="mb-0">Nota 3: Conforme Expectativa.</p>
												  <p class="mb-0">Nota 4: Acima da Expectativa.</p>
												  <p class="mb-0">Nota 5: Muito Acima da Expectativa.</p>
												</div>
													<h4>Avaliação de colaborador.</h4>
													<br>
													
													<form class="form-material" action="<%= request.getContextPath() %>/ServletAvaliar" method="post" id="formUser">
													<div class="alert alert-primary" role="alert">
													  <div class="form-group form-default form-static-label">
                                                                <input type="text" name="idaval" id="idaval" class="form-control" readonly="readonly" value="${modelLogin.id}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Código de identificação:</label>
                                                            </div>
													<div class="form-group form-default form-static-label">
                                                                <input type="text" name="nome" id="nome" class="form-control" readonly="readonly" value="${modelLogin.nome}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Nome:</label>
                                                            </div>
													</div>
													
													
                                                    
                                                            <br><br>
													<h5 class="sub-title">1. Habilidade de Comunicação:</h5>
													<br><br><br>
													<h4>1.1 - Como o vendedor se expressa (sua postura) ao apresentar produtos/serviços aos clientes? </h4>
													<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval1">
																	<option disabled="disabled">[Selecione a Nota]</option>
																	<option value="1"
																		<%ModelAvaliar modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("1")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 1</option>

																	<option value="2"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("2")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 2</option>
																	<option value="3"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("3")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 3</option>
																   <option value="4"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("4")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 4</option>
																   <option value="5"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("5")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 5</option>
																</select> 
																
															</div>
															
												<br><br>
													<h5>1.2 - Em situações desafiadoras, como o vendedor se comunica para superar objeções?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval2">
																	<option disabled="disabled">[Selecione a Nota]</option>
																	<option value="1"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval2().equals("1")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 1</option>

																	<option value="2"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval2().equals("2")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 2</option>
																	<option value="3"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval2().equals("3")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 3</option>
																   <option value="4"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval2().equals("4")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 4</option>
																   <option value="5"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval2().equals("5")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 5</option>
																</select> 
																<br><br><br>
													<h5>1.3 - Como o vendedor faz a construção de rapport? Ele demonstra habilidade na leitura do comportamento do cliente e na adaptação de sua abordagem de acordo com o perfil do cliente?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval3">
																	<option disabled="disabled">[Selecione a Nota]</option>
																	<option value="1"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval3().equals("1")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 1</option>

																	<option value="2"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval3().equals("2")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 2</option>
																	<option value="3"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval3().equals("3")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 3</option>
																   <option value="4"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval3().equals("4")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 4</option>
																   <option value="5"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval3().equals("5")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 5</option>
																</select>
																
																<br><br><br><br>
													<h5><span style="color: red;">2. Conhecimento do Produto:</span></h5>
													<br><br><br>
													<h5>2.1 - Como o vendedor demonstra o conhecimento detalhado dos produtos/serviços durante as apresentações?</h5>
													<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval21">
																	<option disabled="disabled">[Selecione a Nota]</option>
																	<option value="1"
																		<%modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval21().equals("1")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 1</option>

																	<option value="2"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval21().equals("2")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 2</option>
																	<option value="3"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval21().equals("3")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 3</option>
																   <option value="4"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval21().equals("4")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 4</option>
																   <option value="5"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval21().equals("5")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 5</option>
																</select> 
																
															</div>
															
												<br><br>
													<h5>2.2 - O vendedor se mostrou disposto a aprender e se manter atualizado sobre o conhecimento de produtos/serviços duramente o período do treinamento?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval22">
																	<option disabled="disabled">[Selecione a Nota]</option>
																	<option value="1"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval22().equals("1")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 1</option>

																	<option value="2"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval22().equals("2")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 2</option>
																	<option value="3"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval22().equals("3")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 3</option>
																   <option value="4"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval22().equals("4")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 4</option>
																   <option value="5"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval22().equals("5")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 5</option>
																</select> 
																<br><br><br>
													<h5>2.3 - Como o vendedor responde a perguntas específicas dos clientes sobre os produtos/serviços (relacionado a segurança e insegurança)?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval23">
																	<option disabled="disabled">[Selecione a Nota]</option>
																	<option value="1"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval23().equals("1")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 1</option>

																	<option value="2"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval23().equals("2")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 2</option>
																	<option value="3"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval23().equals("3")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 3</option>
																   <option value="4"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval23().equals("4")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 4</option>
																   <option value="5"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval23().equals("5")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 5</option>
																</select>
																<button type="submit"class="btn btn-success waves-effect waves-light">Salvar</button>
															</div>
													</form>
													
											</div>
										</div>
										
										<span id="msg">${msg}</span>
										
									</div>


									<!-- Page-body end -->
								</div>
								<div id="styleSelector"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="javascriptfile.jsp"></jsp:include>
	
	<script type="text/javascript"></script>
	
</body>

</html>
