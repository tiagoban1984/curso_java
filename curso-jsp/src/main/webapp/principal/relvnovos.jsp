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
                                                        <h4 class="sub-title">Relatório de Videos.</h4>
                                  						 <form class="form-material" action="<%= request.getContextPath() %>/ServletRelVideos" method="post" id="formUser">
 															<a class="btn btn-primary" href="<%= request.getContextPath() %>/ServletLogin?iduserel=${modelLogin.id}" onclick="window.open('<%= request.getContextPath() %>/ServletLogin?iduserel=${modelLogin.id}', 'NomeDaJanela', 'width=800,height=600'); return false;" role="button">Imprimir</a>
                                  						 
                                  						 <br><br>
                                  						 <input type="hidden" id="acaoRelatorioImprimirTipo" name="acao" id="acao" value= "">
                                  						 
                                  						 
                                                             <div class="form-group form-default form-static-label">
                                                                <input type="text" name="nome" id="nome" class="form-control" readonly="readonly" value="${modelLogin.nome}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Nome:</label>
                                                            </div>
                                                            
                                                           <div class="form-group form-default form-static-label">
                                                                <input type="text" name="setor" id="setor" class="form-control" readonly="readonly" value="${modelLogin.perfil}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Setor:</label>
                                                            </div>
                                                            
                                                            <div class="form-group form-default form-static-label">
                                                                <input type="text" name="data" id="data" class="form-control" readonly="readonly" value="${modelLogin.filial}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Filial:</label>
                                                            </div>
                                                            <h4 class="sub-title">Menu - NBS</h4>

                                                            <div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.nbscrmgold}">
														        <span class="form-bar"></span>
														        <label class="float-label">CRMGOLD:</label>
														    </div>
														</div>
                                                            <div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.aberturaficha}">
														        <span class="form-bar"></span>
														        <label class="float-label">Abertura Ficha:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.consultaagenda}">
														        <span class="form-bar"></span>
														        <label class="float-label">Consulta Agenda:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.filtrarficha}">
														        <span class="form-bar"></span>
														        <label class="float-label">Filtrar Ficha:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.manutencaoficha}">
														        <span class="form-bar"></span>
														        <label class="float-label">Manutenção Ficha:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.tstdriveapre}">
														        <span class="form-bar"></span>
														        <label class="float-label">Test-Drive e Apresentação:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.consestoqplano}">
														        <span class="form-bar"></span>
														        <label class="float-label">Consulta Estoque e Plano:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.pedvenveicestoqvista}">
														        <span class="form-bar"></span>
														        <label class="float-label">Ped. Venda - Veic em estoque á vista:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.planomensalfirm}">
														        <span class="form-bar"></span>
														        <label class="float-label">Plano Mensal - Firm Order:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.pedvenveicmodelo}">
														        <span class="form-bar"></span>
														        <label class="float-label">Ped. Venda - Veículo Modelo:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.reservaveicestoq}">
														        <span class="form-bar"></span>
														        <label class="float-label">Reserva - Veículo em Estoque:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.pedvensnefinanciam}">
														        <span class="form-bar"></span>
														        <label class="float-label">Ped. Vendas com Seminovo e financ.:</label>
														    </div>
														</div>
														
														<h4 class="sub-title">Menu - F&I</h4>
														
														<div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.feibtb}">
														        <span class="form-bar"></span>
														        <label class="float-label">BTB - Banco Toyota:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.feifei}">
														        <span class="form-bar"></span>
														        <label class="float-label">F&I:</label>
														    </div>
														</div>

                                                            <div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.feisissmart}">
														        <span class="form-bar"></span>
														        <label class="float-label">Sistema Smart:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.feipropvenda}">
														        <span class="form-bar"></span>
														        <label class="float-label">Proposta de Venda:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.feiabrpropfinanc}">
														        <span class="form-bar"></span>
														        <label class="float-label">Abrir Prop. Financi.:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.feiabrpropfinanc2}">
														        <span class="form-bar"></span>
														        <label class="float-label">Abrir Prop. Financi2.:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.feiabrpropconsorcio}">
														        <span class="form-bar"></span>
														        <label class="float-label">Abrir Prop. Consórcio:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.feicomoeditarprop}">
														        <span class="form-bar"></span>
														        <label class="float-label">Como editar proposta:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.feisitpropbanca}">
														        <span class="form-bar"></span>
														        <label class="float-label">Situação da Prop. Banca:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.feiconfanalbanca}">
														        <span class="form-bar"></span>
														        <label class="float-label">Conf. Analise Banca:</label>
														    </div>
														</div>
														<h4 class="sub-title">AutoAvaliar</h4>

                                                            <div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.aavcomologar}">
														        <span class="form-bar"></span>
														        <label class="float-label">Como Logar:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														<div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.aavprocautoav}">
														        <span class="form-bar"></span>
														        <label class="float-label">Processo AutoAvaliar:</label>
														    </div>
														</div>
														<h4 class="sub-title">Financeiro</h4>

                                                            <div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.fininfogerais}">
														        <span class="form-bar"></span>
														        <label class="float-label">Informações Gerais:</label>
														    </div>
														</div>
														<h4 class="sub-title">Consórcio</h4>

                                                            <div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.conintroconsorcio}">
														        <span class="form-bar"></span>
														        <label class="float-label">Introdução ao Consórcio:</label>
														    </div>
														</div>
														<h4 class="sub-title">Unico Auto</h4>

                                                            <div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.uniintroprocvendas}">
														        <span class="form-bar"></span>
														        <label class="float-label">Introdução Proc. de Vendas:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.unitreinamento1}">
														        <span class="form-bar"></span>
														        <label class="float-label">Treinamento 1:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.unitreinamento2}">
														        <span class="form-bar"></span>
														        <label class="float-label">treinamento 2:</label>
														    </div>
														</div>
														<h4 class="sub-title">Entrega Técnica</h4>

                                                            <div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.entpassovenent}">
														        <span class="form-bar"></span>
														        <label class="float-label">Passos de Vendas - entrega:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.entonetoyota}">
														        <span class="form-bar"></span>
														        <label class="float-label">One Toyota:</label>
														    </div>
														</div>
														<h4 class="sub-title">One Toyota</h4>

                                                            <div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.oneoquee}">
														        <span class="form-bar"></span>
														        <label class="float-label">O que é ONE TOYOTA:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.onepdfpergrespostas}">
														        <span class="form-bar"></span>
														        <label class="float-label">PDF - Perguntas e Respostas OT:</label>
														    </div>
														</div>
														<h4 class="sub-title">Simulação Processo de Vendas</h4>

                                                            <div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.simqualificacao}">
														        <span class="form-bar"></span>
														        <label class="float-label">Qualificação:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.simtstapresent}">
														        <span class="form-bar"></span>
														        <label class="float-label">Test-Drive e Apresentação:</label>
														    </div>
														</div>
														<div style="display: inline-block;">
														    <div class="form-group form-default form-static-label">
														        <input type="text" name="avaliador" id="avaliador" class="form-control" readonly="readonly" value="${modelLogin.sispdfprocvendas}">
														        <span class="form-bar"></span>
														        <label class="float-label">PDF - Processo de Vendas:</label>
														    </div>
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
				<th scope="col">Filial</th>
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
			   			$('#tabelaresultados > tbody').append('<tr> <td>'+json[p].nome+'</td> <td>'+json[p].perfil+'</td> <td>'+json[p].filial+'</td> <td><button onclick="verEditar('+json[p].id+')" type="button" class="btn btn-info">Ver</button></td></tr>');
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