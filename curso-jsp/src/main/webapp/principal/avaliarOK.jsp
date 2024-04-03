<%@page import="model.ModelAvaliar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10/dist/sweetalert2.all.min.js"></script>
	

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
												<form class="form-material" action="<%= request.getContextPath() %>/ServletLogin" method="post" id="formUser">
												</form>
												<form class="form-material" action="<%= request.getContextPath() %>/ServletAvaliar" method="post" id="formUser" onsubmit="return validarCampos();">
												<button type="button" class="btn btn-danger" value="${modelLogin.nome}">${modelLogin.nome}</button>
												<input type="text" name="login" id="login" class="form-control" readonly="readonly" value="${usuario}" style="display: none;">
												<input type="text" name="idaval" id="idaval" class="form-control" readonly="readonly" value="${modelLogin.id}" style="display: none;">
												
												

												<span id="msg">${msg}</span>

    <script>
        // Obt�m a refer�ncia da mensagem
        var msgElement = document.getElementById('msg');

        // Verifica se a mensagem est� presente e n�o � vazia
        if (msgElement && msgElement.innerHTML.trim() !== '') {
            // Exibe um alerta com o conte�do da mensagem
            Swal.fire({
                title: 'Avalia��o Encerrada com sucesso!',
                html: msgElement.innerHTML.trim(),
                confirmButtonText: 'OK',
            });
        }
    </script>
												<div class="alert alert-success" role="alert" style="max-width: 600px;">
												  <h4 class="alert-heading">Aten��o!</h4>
												  <p>Para o preenchimento correto da avalia��o, avalie conforme a escala de 1 a 5:</p>
												  <hr>
												  <p class="mb-0">Nota 1: Muito Abaixo da Expectativa.</p>
												  <p class="mb-0">Nota 2: Abaixo da Expectativa.</p>
												  <p class="mb-0">Nota 3: Conforme Expectativa.</p>
												  <p class="mb-0">Nota 4: Acima da Expectativa.</p>
												  <p class="mb-0">Nota 5: Muito Acima da Expectativa.</p>
												</div>
												
												<h4>Colaborador tem quanto tempo de experi�ncia?</h4>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="experiencia">
																	<option selected disabled>[Selecione]</option>
																	<option value="Sem experiencia"
																		<%ModelAvaliar modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

																	if (modelAvaliar != null && modelAvaliar.getExperiencia().equals("Sem experiencia")) {
																		out.print(" ");
																		out.print("selected=\"selected\"");
																		out.print(" ");
																	}%>>Sem Experi�ncia</option>
																	
																	<option value="0 a 2 anos"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getExperiencia().equals("0 a 2 anos")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>0 � 2 anos</option>
																	<option value="3 a 6 anos"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getExperiencia().equals("3 a 6 anos")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>3 � 6 anos</option>
																   <option value="7 a 10 anos"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getExperiencia().equals("7 a 10 anos")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>7 � 10 anos</option>
																   <option value="Acima de 10 anos"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getExperiencia().equals("Acima de 10 anos")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Acima de 10 anos</option>
																</select>
																</div>
												
													<h5><span style="color: red;">1. Habilidade de Comunica��o:</span></h5>
													<br><br><br>
													<h4>1.1 - Como o vendedor se expressa (sua postura) ao apresentar produtos/servi�os aos clientes? </h4>
													<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval1">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																
															</div>
															
												<br><br>
													<h5>1.2 - Em situa��es desafiadoras, como o vendedor se comunica para superar obje��es?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval2">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval2().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval2().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval2().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval2().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval2().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																<br><br><br>
													<h5>1.3 - Como o vendedor faz a constru��o de rapport? Ele demonstra habilidade na leitura do comportamento do cliente e na adapta��o de sua abordagem de acordo com o perfil do cliente?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval3">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval3().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval3().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval3().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval3().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval3().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select>
																
																<br><br><br><br>
													<h5><span style="color: red;">2. Conhecimento do Produto:</span></h5>
													<br><br><br>
													<h5>2.1 - Como o vendedor demonstra o conhecimento detalhado dos produtos/servi�os durante as apresenta��es?</h5>
													<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval21">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<%modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval21().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval21().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval21().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval21().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval21().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																
															</div>
															
												<br><br>
													<h5>2.2 - O vendedor se mostrou disposto a aprender e se manter atualizado sobre o conhecimento de produtos/servi�os duramente o per�odo do treinamento?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval22">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval22().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval22().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval22().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval22().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval22().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																<br><br><br>
													<h5>2.3 - Como o vendedor responde a perguntas espec�ficas dos clientes sobre os produtos/servi�os (relacionado a seguran�a e inseguran�a)?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval23">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval23().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval23().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval23().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval23().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval23().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select>
																
																<br><br><br><br>
													<h5><span style="color: red;">3. Resili�ncia:</span></h5>
													<br><br><br>
													<h5>3.1 - Como o vendedor lida com a rejei��o ou feedback negativo durante as negocia��es?</h5>
													<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval31">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<%modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval31().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval31().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval31().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval31().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval31().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																
															</div>
															
												<br><br>
													<h5>3.2 - Em situa��es de press�o, como o vendedor mant�m o foco e a confian�a?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval32">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval32().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval32().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval32().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval32().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval32().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																<br><br><br>
													<h5>3.3 - Como o vendedor aprende com experi�ncias frustrantes?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval33">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval33().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval33().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval33().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval33().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval33().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select>
																
																<br><br><br><br>
													<h5><span style="color: red;">4. Adapta��o a Mudan�as:</span></h5>
													<br><br><br>
													<h5>4.1 - Como o vendedor se ajusta em rela��o as mudan�as nas estrat�gias de vendas ou nos produtos/servi�os oferecidos?</h5>
													<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval41">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<%modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval41().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval41().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval41().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval41().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval41().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																
															</div>
															
												<br><br>
													<h5>4.2 - O vendedor demonstrou flexibilidade diante de mudan�as na estrat�gia?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval42">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval42().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval42().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval42().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval42().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval42().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																<br><br><br>
													<h5>4.3 - Como foi a resposta do vendedor ao receber as informa��es sobre �s pol�ticas internas da empresa que de alguma forma podem afetar as estrat�gias de vendas?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval43">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval43().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval43().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval43().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval43().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval43().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select>
																
																			<br><br><br><br>
													<h5><span style="color: red;">5. �tica Profissional:</span></h5>
													<br><br><br>
													<h5>5.1 - Como o vendedor lida com situa��es �ticas, incluindo conflitos de interesse?</h5>
													<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval51">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<%modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval51().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval51().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval51().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval51().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval51().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																
															</div>
															
												<br><br>
													<h5>5.2 - O vendedor demonstrou disposi��o em seguir as pol�ticas �ticas e os padr�es profissionais da empresa, ou houve alguma resist�ncia?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval52">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval52().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval52().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval52().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval52().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval52().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																<br><br><br>
													<h5>5.3 - O vendedor aceitou de maneira tranquila seguir a trilha de aprendizagem e os prazos estipulados pelo CCDHai?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval53">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval53().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval53().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval53().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval53().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval53().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select>
																
																<br><br><br><br>
													<h5><span style="color: red;">6. Iniciativa:</span></h5>
													<br><br><br>
													<h5>6.1 - O vendedor tomou a iniciativa nas simula��es, entregando um atendimento conforme exigido nos padr�es ONE TOYOTA?</h5>
													<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval61">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<%modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval61().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval61().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval61().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval61().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval61().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																
															</div>
															
												<br><br>
													<h5>6.2 - Durante o treinamento, o vendedor contribuiu ativamente para as conversas e mentorias, demonstrando respeito ao se expressar?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval62">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval62().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval62().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval62().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval62().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval62().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																<br><br><br>
													<h5>6.3 - O vendedor buscou desenvolver as novas habilidades e conhecimentos adquiridos durante o treinamento?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval63">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval63().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval63().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval63().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval63().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval63().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select>
																
																<br><br><br><br>
													<h5><span style="color: red;">7. Trabalho em Equipe:</span></h5>
													<br><br><br>
													<h5>7.1 - Como o vendedor colabora com colegas de equipe para atingir metas comuns?</h5>
													<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval71">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<%modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval71().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval71().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval71().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval71().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval71().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																
															</div>
															
												<br><br>
													<h5>7.2 - Como o vendedor incentiva a constru��o de relacionamentos s�lidos entre os membros da equipe para fortalecer a colabora��o a longo prazo?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval72">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval72().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval72().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval72().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval72().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval72().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select> 
																<br><br><br>
													<h5>7.3 - Como o vendedor lida com conflitos ou desafios interpessoais no ambiente de trabalho?</h5>
												<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval73">
																	<option selected disabled>[Selecione]</option>
																	<option value="0.01"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval73().equals("0.0")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 1: Muito Abaixo da Expectativa.</option>

																	<option value="0.12"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval73().equals("0.12")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 2: Abaixo da Expectativa.</option>
																	<option value="0.24"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval73().equals("0.24")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 3: Conforme Expectativa.</option>
																   <option value="0.36"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval73().equals("0.36")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 4: Acima da Expectativa.</option>
																   <option value="0.48"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval73().equals("0.48")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota 5: Muito Acima da Expectativa.</option>
																</select>
																
																<br><br><br><br>
													<h5><span style="color: red;">8. Feche os Olhos:</span></h5>
													<br><br><br>
													<h5>8 - Ao visualizar o novo colaborador atuando como consultor de vendas, em uma escala de 1 a 10, qual � a sua expectativa quanto � sua adapta��o � fun��o, desempenho e resultados esperados pela empresa?</h5>
													<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval8">
																	<option selected disabled>[Selecione]</option>
																	<option value="1.00"
																		<%modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval8().equals("1.00")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 1</option>

																	<option value="2.00"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval8().equals("2.00")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 2</option>
																	<option value="3.00"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval8().equals("3.00")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 3</option>
																   <option value="4.00"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval8().equals("4.00")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 4</option>
																   <option value="5.00"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval8().equals("5.00")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 5</option>
																	<option value="6.00"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval8().equals("6.00")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 6</option>												<option value="7.00"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval8().equals("7.00")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 7</option>												<option value="8.00"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval8().equals("8.00")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 8</option>												<option value="9.00"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval8().equals("9.00")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 9</option>												<option value="10.00"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval8().equals("10.00")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 10</option>
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
	<script>
    // Fun��o para validar os campos antes do envio do formul�rio
    function validarCampos() {
        // Obt�m todos os elementos select do formul�rio
        var selects = document.querySelectorAll('select');
        
        // Itera sobre os elementos select
        for (var i = 0; i < selects.length; i++) {
            // Verifica se o valor selecionado � igual a "Selecione"
            if (selects[i].value === "[Selecione]") {
                // Exibe uma mensagem de erro
                alert("Por favor, selecione uma nota para todos os campos.");
                // Impede o envio do formul�rio
                return false;
            }
        }
        // Se todos os campos estiverem preenchidos corretamente, permite o envio do formul�rio
        return true;
    }
</script>
	
	<script type="text/javascript"></script>
	
</body>

</html>
