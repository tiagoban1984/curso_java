<%@page import="model.ModelLogin"%>
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
									<form class="form-material" action="<%= request.getContextPath() %>/ServletLogin" method="post" id="formUser">
										<div class="form-group form-default form-static-label">
											<!-- Campo Código de Identificação (oculto) -->
											<input type="text" name="idaval" id="idaval" class="form-control" readonly="readonly" value="${usuario}" style="display: none;">
											<span class="form-bar"></span>
										</div>
									</form>
									<div class="page-body">
										<div class="row">
											<div class="col-sm-12">
												<!-- Basic Form Inputs card start -->
												<div class="card"></div>
												<div class="card-block"></div>
												<form class="form-material" action="<%= request.getContextPath() %>/ServletVideos" method="post" id="formUser">
													<div class="col-md-12">
														<!-- Video player -->
														<video width="754" height="480" controls autoplay>
															<source src="../assets/videos/aberturaficha.mp4" type="video/mp4">
															Your browser does not support the video tag.
														</video>
														<!-- Checkbox de "Já assistiu?" -->
														<label for="aberturaficha">Já assistiu?</label>
														<%
															String aberturaficha = (String) request.getAttribute("aberturaficha");
															// Verifica se o valor recuperado é "true" para marcar o checkbox
															boolean isChecked = "true".equals(aberturaficha);
														%>
														<input type="checkbox" id="aberturaficha" name="aberturaficha" <%= isChecked ? "checked" : "" %>>
														<input type="text" name="nome" id="nome" class="form-control-plaintext" readonly="readonly" value="${usuario}" style="display: none;">
														<span class="form-bar"></span>
													</div>
													<!-- Botão de "Salvar" -->
													<button type="submit">Salvar</button>
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
	
	<script type="text/javascript">
        // Verifica o estado do checkbox antes de enviar o formulário
        document.getElementById("formUser").addEventListener("submit", function() {
            var checkbox = document.getElementById("aberturaficha");
            // Se o checkbox estiver marcado, define o valor como true
            // Se não estiver marcado, define o valor como false
            if (checkbox.checked) {
                checkbox.value = "true";
            } else {
                checkbox.value = "false";
            }
        });
    </script>
	
</body>

</html>
