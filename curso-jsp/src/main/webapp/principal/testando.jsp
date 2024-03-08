<%@page import="model.ModelLogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	
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
	<input type="text" name="nome" id="nome" class="form-control-plaintext" readonly="readonly" value="${aberturaficha}" style="height: 30px; text-align: left; width: auto;">
											
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

														<span class="form-bar"></span>
													</div>
													<div class="form-group">
													<input type="text" name="nome" id="nome" class="form-control-plaintext" readonly="readonly" value="${usuario}" style="display: none;">
                                                                <input type="checkbox" id="aberturaficha" name="aberturaficha" value="${aberturaficha}">
                                                                <label for="aberturaficha">Vídeo assistido</label>
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
	

<script>
    // Quando o documento estiver carregado
    $(document).ready(function() {
        // Verifique o valor de ${aberturaficha}
        var aberturaficha = "${aberturaficha}";

        // Defina o valor do campo de texto nome
        $("#nome").val(aberturaficha);

        // Quando o checkbox for alterado
        $("#aberturaficha").change(function() {
            // Obtenha o novo valor do checkbox
            var novoValor = $(this).is(":checked");

            // Faça uma requisição AJAX para atualizar o valor no servidor
            $.ajax({
                url: "ServletVideos",
                method: "POST",
                data: { aberturaficha: novoValor },
                success: function() {
                    // Atualize o valor de ${aberturaficha}
                    aberturaficha = novoValor;

                    // Atualize o valor do campo de texto nome
                    $("#nome").val(aberturaficha);
                },
                error: function() {
                    // Exiba uma mensagem de erro, se necessário
                    alert("Erro ao atualizar o valor do checkbox.");
                }
            });
        });
    });
</script>
	
</body>

</html>
