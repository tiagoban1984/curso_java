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
                                                        <h4 class="sub-title">Avaliação de Colaboradores.</h4>
                                  						 <form class="form-material" action="<%= request.getContextPath() %>/ServletAvaliacaoController" method="post" id="formUser">
                                  						 <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModalAvaliacao"> Buscar Colaborador</button>
 															<a class="btn btn-primary" href="<%= request.getContextPath() %>/ServletAvaliar?iduserel=${modelLogin.id}" onclick="window.open('<%= request.getContextPath() %>/ServletAvaliar?iduserel=${modelLogin.id}', 'NomeDaJanela', 'width=800,height=600'); return false;" role="button">Imprimir</a>
                                  						 
                                  						 <br><br>
                                  						 <input type="hidden" id="acaoRelatorioImprimirTipo" name="acao" id="acao" value= "">
                                  						 
                                  						 
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="id" id="id" class="form-control" readonly="readonly" value="${modelLogin.id}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">ID:</label>
                                                            </div>
                                                            
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="cpf" id="cpf" class="form-control" readonly="readonly" value="${modelLogin.cpf}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Cpf:</label>
                                                            </div>
                                                            
                                                             <div class="form-group form-default form-static-label">
                                                                <input type="text" name="nome" id="nome" class="form-control" readonly="readonly" value="${modelLogin.nome}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Nome:</label>
                                                            </div>
                                                            
                                                           <div class="form-group form-default form-static-label">
                                                                <input type="text" name="setor" id="setor" class="form-control" readonly="readonly" value="${modelLogin.setor}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Setor:</label>
                                                            </div>
                                                            
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="data" id="data" class="form-control" readonly="readonly" value="${modelLogin.data}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Data avaliação:</label>
                                                            </div>
                                                            
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="experiencia" id="experiencia" class="form-control" readonly="readonly" value="${modelLogin.experiencia}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Tempo de Experiência:</label>
                                                            </div>
                                                            
                                                             <div class="form-group form-default form-static-label">
                                                                <input type="text" name="mediavaliacao" id="mediavaliacao" class="form-control" readonly="readonly" value="${modelLogin.mediavaliacao}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Média - Habilidade de Comunicação:</label>
                                                            </div>
                                                            
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="mediavaliacao2" id="mediavaliacao2" class="form-control" readonly="readonly" value="${modelLogin.mediavaliacao2}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Média - Conhecimento do Produto:</label>
                                                            </div>
                                                            
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="mediavaliacao3" id="mediavaliacao3" class="form-control" readonly="readonly" value="${modelLogin.mediavaliacao3}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Média - Resiliência:</label>
                                                            </div>
                                                            
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="mediavaliacao4" id="mediavaliacao4" class="form-control" readonly="readonly" value="${modelLogin.mediavaliacao4}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Média - Adaptação a Mudanças:</label>
                                                            </div>
                                                            
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="mediavaliacao5" id="mediavaliacao5" class="form-control" readonly="readonly" value="${modelLogin.mediavaliacao5}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Média - Ética Profissional:</label>
                                                            </div>
                                                            
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="mediavaliacao6" id="mediavaliacao6" class="form-control" readonly="readonly" value="${modelLogin.mediavaliacao6}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Média - Iniciativa:</label>
                                                            </div>
                                                            
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="mediavaliacao7" id="mediavaliacao7" class="form-control" readonly="readonly" value="${modelLogin.mediavaliacao7}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Média - Trabalho em Equipe:</label>
                                                            </div>
                                                            
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="mediavaliacao8" id="mediavaliacao8" class="form-control" readonly="readonly" value="${modelLogin.mediavaliacao8}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Média - Avaliação Pessoal:</label>
                                                            </div>
                                                            
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="mediatotalhalo" id="mediatotalhalo" class="form-control" readonly="readonly" value="${modelLogin.mediatotalhalo}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Média - Total HALO:</label>
                                                            </div>
                                                            
 

                                </form>
                                    <!-- Page-body end -->
                                </div>
                                
                                
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
<div class="modal fade" id="exampleModalAvaliacao" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Pesquisa de Colaborador</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
					<div class="input-group mb-3">
					  <input type="text" class="form-control" placeholder="Nome" aria-label="nome" id="nomeBusca" aria-describedby="basic-addon2">
					  <div class="input-group-append">
					    <button class="btn btn-success" type="button" onclick="buscarColaboradores();">Buscar</button>
					  </div>
					</div>
					
		<div style="height: 500px;overflow: scroll;">			
			<table class="table" id="tabelaresultados">
			  <thead>
			    <tr>
			    <th scope="col">Nome</th>
				<th scope="col">Setor</th>
				<th scope="col">Data</th>
			    </tr>
			  </thead>
			  <tbody>
			 </tbody>
		</table>
		</div>
		
			
		<span id="totalResultados"></span>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">

function verEditar(id) {

	var urlAction = document.getElementById('formUser').action;
	
	window.location.href = urlAction + '?acao=buscarEditarRel&id='+id;
	
}

	

	function buscarColaboradores(){
		
		var nomeBusca = document.getElementById('nomeBusca').value;
		
		if (nomeBusca != null && nomeBusca != '' && nomeBusca.trim() != ''){
			
			var urlAction = document.getElementById('formUser').action;
			
			$.ajax({
			     
			     method: "get",
			     url : urlAction,
			     data : "nomeBusca=" + nomeBusca + '&acao=buscarColaboradoresAjax',
			     success: function (response, textStatus, xhr) {
			    	 
			    	 var json = JSON.parse(response);
					 
					 
					 $('#tabelaresultados > tbody > tr').remove();
					 $("#ulPaginacaoColaboradoresAjax > li").remove();
					 
					  for(var p = 0; p < json.length; p++){
			   			$('#tabelaresultados > tbody').append('<tr> <td>'+json[p].nome+'</td> <td>'+json[p].setor+'</td> <td>'+json[p].data+'</td> <td><button onclick="verEditar('+json[p].id+')" type="button" class="btn btn-info">Ver</button></td></tr>');
			   		}
			   		
			   		document.getElementById('totalResultados').textContent = 'Resultados: ' + json.length;
			   		
			   		var totalPagina =  xhr.getResponseHeader("totalPagina");


			   		for (var p = 0; p < totalPagina; p++){
					      
					      var url = 'nomeBusca=' + nomeBusca + '&acao=buscarColaboradoresAjaxPage&pagina='+ (p * 5);
					      
					   
					      $("#ulPaginacaoColaboradoresAjax").append('<li class="page-item"><a class="page-link" href="#" onclick="buscaColaboradoresPagAjax(\''+url+'\')">'+ (p + 1) +'</a></li>');
					      
					  }
				 
			     }
			     
			 }).fail(function(xhr, status, errorThrown){
			    alert('Erro ao deletar usuário por nome: ' + xhr.responseText);
			 });
			
		}
	}


/*function criarDeleteComAjax() {
    
    if (confirm('Deseja realmente excluir os dados?')){
	
	 var urlAction = document.getElementById('formUser').action;
	 var idUser = document.getElementById('id').value;
	 
	 $.ajax({
	     
	     method: "get",
	     url : urlAction,
	     data : "id=" + idUser + '&acao=deletarajax',
	     success: function (response) {
		 
		  limparForm();
		  document.getElementById('msg').textContent = response;
	     }
	     
	 }).fail(function(xhr, status, errorThrown){
	    alert('Erro ao deletar usuário por id: ' + xhr.responseText);
	 });
	 
	  
    }
    
}



function criarDelete() {
    
    if(confirm('Deseja realmente excluir os dados?')) {
	
	    document.getElementById("formUser").method = 'get';
	    document.getElementById("acao").value = 'deletar';
	    document.getElementById("formUser").submit();
	    
    }
    
}*/


function limparForm() {
    
    var elementos = document.getElementById("formUser").elements; /*Retorna os elementos html dentro do form*/
    
    for (p = 0; p < elementos.length; p ++){
	    elementos[p].value = '';
    }
}
</script>



</body>
</html>