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
        // Obtém a referência da mensagem
        var msgElement = document.getElementById('msg');

        // Verifica se a mensagem está presente e não é vazia
        if (msgElement && msgElement.innerHTML.trim() !== '') {
            // Exibe um alerta com o conteúdo da mensagem
            Swal.fire({
                title: 'Avaliação Encerrada com sucesso!',
                html: msgElement.innerHTML.trim(),
                confirmButtonText: 'OK',
            });
        }
    </script>
												<div class="alert alert-success" role="alert" style="max-width: 600px;">
												  <h4 class="alert-heading">Atenção!</h4>
												  <p>Para o preenchimento correto da avaliação, avalie conforme a escala de 1 a 5:</p>
												  <hr>
												  <p class="mb-0">Nota 1: Muito Abaixo da Expectativa.</p>
												  <p class="mb-0">Nota 2: Abaixo da Expectativa.</p>
												  <p class="mb-0">Nota 3: Conforme Expectativa.</p>
												  <p class="mb-0">Nota 4: Acima da Expectativa.</p>
												  <p class="mb-0">Nota 5: Muito Acima da Expectativa.</p>
												</div>
												
												<h4>Colaborador tem quanto tempo de experiência?</h4>
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
																	}%>>Sem Experiência</option>
																	
																	<option value="0 a 2 anos"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getExperiencia().equals("0 a 2 anos")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>0 á 2 anos</option>
																	<option value="3 a 6 anos"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getExperiencia().equals("3 a 6 anos")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>3 á 6 anos</option>
																   <option value="7 a 10 anos"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getExperiencia().equals("7 a 10 anos")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>7 á 10 anos</option>
																   <option value="Acima de 10 anos"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getExperiencia().equals("Acima de 10 anos")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Acima de 10 anos</option>
																</select>
																</div>
												
													<h5><span style="color: red;">1. Habilidade de Comunicação:</span></h5>
													<br><br><br>
													<h4>1.1 - Como o vendedor se expressa (sua postura) ao apresentar produtos/serviços aos clientes? </h4>
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
													<h5>1.2 - Em situações desafiadoras, como o vendedor se comunica para superar objeções?</h5>
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
													<h5>1.3 - Como o vendedor faz a construção de rapport? Ele demonstra habilidade na leitura do comportamento do cliente e na adaptação de sua abordagem de acordo com o perfil do cliente?</h5>
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
													<h5>2.1 - Como o vendedor demonstra o conhecimento detalhado dos produtos/serviços durante as apresentações?</h5>
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
													<h5>2.2 - O vendedor se mostrou disposto a aprender e se manter atualizado sobre o conhecimento de produtos/serviços duramente o período do treinamento?</h5>
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
													<h5>2.3 - Como o vendedor responde a perguntas específicas dos clientes sobre os produtos/serviços (relacionado a segurança e insegurança)?</h5>
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
													<h5><span style="color: red;">3. Resiliência:</span></h5>
													<br><br><br>
													<h5>3.1 - Como o vendedor lida com a rejeição ou feedback negativo durante as negociações?</h5>
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
													<h5>3.2 - Em situações de pressão, como o vendedor mantém o foco e a confiança?</h5>
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
													<h5>3.3 - Como o vendedor aprende com experiências frustrantes?</h5>
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
													<h5><span style="color: red;">4. Adaptação a Mudanças:</span></h5>
													<br><br><br>
													<h5>4.1 - Como o vendedor se ajusta em relação as mudanças nas estratégias de vendas ou nos produtos/serviços oferecidos?</h5>
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
													<h5>4.2 - O vendedor demonstrou flexibilidade diante de mudanças na estratégia?</h5>
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
													<h5>4.3 - Como foi a resposta do vendedor ao receber as informações sobre às políticas internas da empresa que de alguma forma podem afetar as estratégias de vendas?</h5>
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
													<h5><span style="color: red;">5. Ética Profissional:</span></h5>
													<br><br><br>
													<h5>5.1 - Como o vendedor lida com situações éticas, incluindo conflitos de interesse?</h5>
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
													<h5>5.2 - O vendedor demonstrou disposição em seguir as políticas éticas e os padrões profissionais da empresa, ou houve alguma resistência?</h5>
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
													<h5>6.1 - O vendedor tomou a iniciativa nas simulações, entregando um atendimento conforme exigido nos padrões ONE TOYOTA?</h5>
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
													<h5>7.2 - Como o vendedor incentiva a construção de relacionamentos sólidos entre os membros da equipe para fortalecer a colaboração a longo prazo?</h5>
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
													<h5>8 - Ao visualizar o novo colaborador atuando como consultor de vendas, em uma escala de 1 a 10, qual é a sua expectativa quanto à sua adaptação à função, desempenho e resultados esperados pela empresa?</h5>
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
    // Função para validar os campos antes do envio do formulário
    function validarCampos() {
        // Obtém todos os elementos select do formulário
        var selects = document.querySelectorAll('select');
        
        // Itera sobre os elementos select
        for (var i = 0; i < selects.length; i++) {
            // Verifica se o valor selecionado é igual a "Selecione"
            if (selects[i].value === "[Selecione]") {
                // Exibe uma mensagem de erro
                alert("Por favor, selecione uma nota para todos os campos.");
                // Impede o envio do formulário
                return false;
            }
        }
        // Se todos os campos estiverem preenchidos corretamente, permite o envio do formulário
        return true;
    }
</script>
	
	<script type="text/javascript"></script>
	
</body>

</html>
