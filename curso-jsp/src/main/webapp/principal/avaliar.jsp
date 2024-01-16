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
													<h4>Avaliação de colaborador.</h4><div class="form-group form-default form-static-label">
													<label class="float-label">ID:</label>
                                                                <input type="text" name="id" id="id" class="form-control" readonly="readonly" value="${modelLogin.id}">
                                                                <span class="form-bar"></span>
                                                            </div>
													<div class="form-group form-default form-static-label">
													<label class="float-label">Nome:</label>
                                                                <input type="text" name="nome" id="nome" class="form-control" readonly="readonly" value="${modelLogin.nome}">
                                                                <span class="form-bar"></span>
                                                            </div>
                                                            <br><br>
													<h5 class="sub-title">1. Habilidade de Comunicação:</h5>
													<br>
													<label class="float-label">Como o vendedor se expressa (sua postura) ao apresentar produtos/serviços aos clientes? </label>
													<form class="form-material" action="<%= request.getContextPath() %>/ServletAvaliar" method="post" id="formAval">
													
													<div class="form-group form-default">
																<select class="form-control"
																	aria-label="Default select example" name="aval1">
																	<option disabled="disabled">[Selecione a Nota]</option>
																	<option value="1"
																		<%ModelAvaliar modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("01")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 1</option>

																	<option value="2"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("02")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 2</option>
																	<option value="3"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("03")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 3</option>
																   <option value="4"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("04")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Nota - 4</option>
																   <option value="5"
																		<% modelAvaliar = (ModelAvaliar) request.getAttribute("modelAvaliar");

if (modelAvaliar != null && modelAvaliar.getAval1().equals("05")) {
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
</body>

</html>
