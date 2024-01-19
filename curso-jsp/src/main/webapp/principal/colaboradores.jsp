<%@page import="model.ModelLogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
                                                <div class="card">
                                                 
                                                    <div class="card-block">
                                                        <h4 class="sub-title">Cadastro de Colaboradores.</h4>
                                  						 <form class="form-material" action="<%= request.getContextPath() %>/ServletColaboradoresController" method="post" id="formUser">
                                  						 
                                  						 <input type="hidden" name="acao" id="acao" value= "">
                                  						 
                                  						 
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="id" id="id" class="form-control" readonly="readonly" value="${modelLogin.id}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">ID:</label>
                                                            </div>
                                                            
                                                            <div class="form-group form-default">
                                                                <input type="text" name="cpf" id="cpf" class="form-control" required="required" autocomplete="off" value="${modelLogin.cpf}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Cpf:</label>
                                                            </div>
                                                            
                                                             <div class="form-group form-default">
                                                                <input type="text" name="nome" id="nome" class="form-control" required="required" autocomplete="off" value="${modelLogin.nome}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Nome:</label>
                                                            </div>
                                                            
                                                           <div class="form-group form-default ">
																<select class="form-control"
																	aria-label="Default select example" name="setor">
																	<option disabled="disabled">[Selecione o
																		Setor]</option>
																	<option value="NOVOS"
																		<%ModelLogin modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getSetor().equals("NOVOS")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Vendas Novos</option>

																	<option value="USADOS"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getSetor().equals("USADOS")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Seminovos</option>
																	<option value="POSVENDAS"
																		<%modelLogin = (ModelLogin) request.getAttribute("modelLogin");

if (modelLogin != null && modelLogin.getSetor().equals("POSVENDAS")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Pós-Vendas</option>
																</select> <label class="float-label">Setor:</label>
															</div>
                                                            
                                                            <button type="button" class="btn btn-primary waves-effect waves-light" onclick="limparForm()">Novo</button>
												            <button type="submit"class="btn btn-success waves-effect waves-light">Salvar</button>
												            <button type="button" class="btn btn-info waves-effect waves-light" onclick="criarDeleteComAjax()">Excluir</button>
												            <!-- <button type="button" class="btn btn-secundary" data-toggle="modal" data-target="#exampleModalColaboradores">Pesquisar</button>-->
												            
                                                        </form>
                                                            </div>
                                                            </div>
                                                            </div>
                                                            </div>
                                                            <span id="msg">${msg}</span>
                                                            
                                                            <div style="height: 500px;overflow: scroll;">
															<table class="table" id="tabelaresultadosview">
															  <thead>
															    <tr>
															      <th scope="col">ID</th>
															      <th scope="col">Nome</th>
															      <th scope="col">CPF</th>
															      <th scope="col">Setor</th>
															    </tr>
															  </thead>
															  <tbody>
															  <c:forEach items='${modelLogins}' var='ml'>
															  	<tr>
															  	<td><c:out value="${ml.id}"></c:out></td>
															<td><c:out value="${ml.cpf}"></c:out></td>
															<td><c:out value="${ml.nome}"></c:out></td>
															<td><c:out value="${ml.setor}"></c:out></td>
															<td><a class="btn btn-success" href="<%= request.getContextPath() %>/ServletColaboradoresController?acao=buscarEditar&id=${ml.id}">Ver</a></td>
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
													String url = request.getContextPath() + "/ServletColaboradoresController?acao=paginar&pagina=" + (p * 5);
													out.print("<li class=\"page-item\"><a class=\"page-link\" href=\"" + url + "\">" + (p + 1) + "</a></li>");
												}
												%>


											</ul>
										</nav>
                                                            
                                <div id="styleSelector"> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
<jsp:include page="javascriptfile.jsp"></jsp:include>

							<!-- Modal -->
							<div class="modal fade" id="exampleModalColaboradores" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLabel">Pesquisa de Colaboradores</h5>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
							      </div>
							      <div class="modal-body">
							        
									<div class="input-group mb-3">
									  <input type="text" class="form-control" placeholder="Nome" aria-label="Nome" id="nomeBusca" aria-describedby="basic-addon2">
									  <div class="input-group-append">
									    <button class="btn btn-success" type="button" onclick="buscarColaboradores();">Buscar</button>
									  </div>
									</div>
									
<div style="height: 500px;overflow: scroll;">
<table class="table" id="tabelaresultados">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nome</th>
      <th scope="col">CPF</th>
      <th scope="col">Setor</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>
</div>

<nav aria-label="Page navigation example">
<ul class="pagination" id="ulPaginacaoColaboradoresAjax">
</ul>
</nav>
<span id="totalResultados"></span>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
							      </div>
							    </div>
							  </div>
							</div>

<script type="text/javascript">

	function verEditar(id){
		
		var urlAction = document.getElementById('formUser').action;
		
		window.location.href = urlAction + '?acao=buscarEditar&id='+id;
		
	}
	
	function buscaColaboradoresPagAjax(url){
		   
	    
	    var urlAction = document.getElementById('formUser').action;
	    var nomeBusca = document.getElementById('nomeBusca').value;
	    
		 $.ajax({	     
		     method: "get",
		     url : urlAction,
		     data : url,
		     success: function (response, textStatus, xhr) {
			 
			 var json = JSON.parse(response);
			 
			 
			 $('#tabelaresultados > tbody > tr').remove();
			 $("#ulPaginacaoColaboradoresAjax > li").remove();
			 
			  for(var p = 0; p < json.length; p++){
			      $('#tabelaresultados > tbody').append('<tr> <td>'+json[p].id+'</td> <td> '+json[p].nome+'</td> <td><button onclick="verEditar('+json[p].id+')" type="button" class="btn btn-info">Ver</button></td></tr>');
			  }
			  
			  document.getElementById('totalResultados').textContent = 'Resultados: ' + json.length;
			  
			    var totalPagina = xhr.getResponseHeader("totalPagina");
		
			  
			    
				  for (var p = 0; p < totalPagina; p++){
				      
			
				      
				      var url = 'nomeBusca=' + nomeBusca + '&acao=buscarColaboradoresAjaxPage&pagina='+ (p * 5);
				      
				   
				      $("#ulPaginacaoColaboradoresAjax").append('<li class="page-item"><a class="page-link" href="#" onclick="buscaColaboradoresPagAjax(\''+url+'\')">'+ (p + 1) +'</a></li>'); 
				      
				  }
			 
		     }
		     
		 }).fail(function(xhr, status, errorThrown){
		    alert('Erro ao buscar usuário por nome: ' + xhr.responseText);
		 });
	    
	}
		

	function buscarColaboradores() {
		
		var nomeBusca = document.getElementById('nomeBusca').value;
		
		if(nomeBusca != null && nomeBusca != '' && nomeBusca.trim() != '') {
			
			alert(nomeBusca);
			
		var urlAction = document.getElementById('formUser').action;


				$.ajax({
				
				method: "get",
				url : urlAction,
				data: "nomeBusca=" + nomeBusca + '&acao=buscarColaboradoresAjax',
				success: function (response, textStatus, xhr) {
						
				var json = JSON.parse(response);
				
				$('#tabelaresultados > tbody > tr').remove();
				$("#ulPaginacaoColaboradoresAjax > li").remove();
				
				for(var p = 0; p < json.length; p++){
					$('#tabelaresultados > tbody').append('<tr> <td>'+json[p].id+'</td> <td> '+json[p].nome+'</td> <td> '+json[p].cpf+'</td> <td> '+json[p].setor+'</td> <td><button onclick="verEditar('+json[p].id+')" type="button" class="btn btn-info">Ver</button></td></tr>');
				}
				
				document.getElementById('totalResultados').textContent = 'Resultados: ' + json.length;
				
				var totalPagina = xhr.getResponseHeader("totalPagina");
				
				for (var p = 0; p < totalPagina; p++){
					var url = urlAction + "nomeBusca" + nomeBusca + "&acao=buscarColaboradoresAjaxPage&pagina="+ (p * 5);
					$("#ulPaginacaoColaboradoresAjax").append('<li class="page-item"><a class="page-link" href="#" onclick="buscaColaboradoresPagAjax(\''+ url+ '\')">'+ (p + 1)	+ '</a></li>');
					
				}
					
				}
				
			}).fail(function(xhr, status, errorThrown){
				alert('Erro ao buscar usuário por nome: ' + xhr.responseText);
			})*/
			
		}
		
	}
	
	function criarDeleteComAjax() {
		
		if(confirm('Deseja Realmente excluir os dados?')) {
		
			var urlAction = document.getElementById('formUser').action;
			var idUser = document.getElementById('id').value;
			
			$.ajax({
				
				method: "get",
				url : urlAction,
				data: "id=" + idUser + '&acao=deletarajax',
				success: function (response) {
					
					limparForm();					
					document.getElementById('msg').textContent = response;
				}
				
			}).fail(function(xhr, status, errorThrown){
				alert('Erro ao deletar usuário por id: ' + xhr.responseText);
			});
			
			
		}
	}

	function criarDelete(){
		
		if(confirm('Deseja Realmente excluir os dados')) {
		
		document.getElementById("formUser").method = 'get';
		document.getElementById("acao").value = 'deletar';
		document.getElementById("formUser").submit();
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
    