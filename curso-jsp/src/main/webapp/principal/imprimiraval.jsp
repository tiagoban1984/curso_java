<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>
<jsp:include page="theme-loader.jsp"></jsp:include>

  <body>
                                   
                                        <div class="row">
                                        
                                        <div class="col-sm-12">
                                                <!-- Basic Form Inputs card start -->
                                                <div class="card">
                                                 
                                                    <div class="card-block">
                                                        <h4 class="sub-title">Avaliação de Colaboradores.</h4>
                                  						 <form class="form-material" action="<%= request.getContextPath() %>/ServletAvaliar" method="post" id="formUser">
													
													<div class="form-group form-default form-static-label">
                                                                <input type="text" name="id" id="id" class="form-control" readonly="readonly" value="${modelLogin.id}">
                                                                <span class="form-bar"></span>
                                                                <label class="float-label">Código ID:</label>
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
                                                            
												            <button onClick="window.print()">Imprimir</button>
												            
                                </form>
                                    <!-- Page-body end -->
                                </div>
                                
                                
                                <div id="styleSelector"> </div>
                            </div>
                        </div>
                                
    
<jsp:include page="javascriptfile.jsp"></jsp:include>
	
	<script type="text/javascript"></script>
</body>

</html>






    