<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set scope="session" var="perfil"
	value='<%=request.getSession().getAttribute("perfil")%>'></c:set>

<nav class="pcoded-navbar">
	<div class="sidebar_toggle">
		<a href="#"><i class="icon-close icons"></i></a>
	</div>
	<div class="pcoded-inner-navbar main-menu">
		<div class="">
			<div class="main-menu-header">
				<c:if test="${imagemUser != '' && imagemUser != null}">
					<img class="img-80 img-radius" src="${imagemUser}"
						alt="User-Profile-Image">
				</c:if>

				<c:if test="${imagemUser == '' ||  imagemUser == null}">
					<img class="img-80 img-radius"
						src="<%=request.getContextPath()%>/assets/images/avatar-6.jpg"
						alt="User-Profile-Image">
				</c:if>
				<div class="user-details">
					<span id="more-details"><%=session.getAttribute("usuario")%><i
						class="fa fa-caret-down"></i></span>
				</div>
			</div>

			<div class="main-menu-content">
				<ul>
					<li class="more-details">
						<!--    <a href="user-profile.html"><i class="ti-user"></i>View Profile</a> -->
						<!--   <a href="#!"><i class="ti-settings"></i>Settings</a> --> <a
						href="<%=request.getContextPath()%>/ServletLogin?acao=Logout"><i
							class="ti-layout-sidebar-left"></i>Sair</a>
					</li>
				</ul>
			</div>
		</div>

<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'TREINAMENTO'}">
		<ul class="pcoded-item pcoded-left-item">
			<li class="active"><a
				href="<%=request.getContextPath()%>/principal/principal.jsp"
				class="waves-effect waves-dark" style="margin-top: 10px;"> <span
					class="pcoded-micon"><i class="ti-home"></i><b>D</b></span> <span
					class="pcoded-mtext" data-i18n="nav.dash.main">Principal</span> <span
					class="pcoded-mcaret"></span>
			</a></li>

			<li class="pcoded-hasmenu"><a href="javascript:void(0)"
				class="waves-effect waves-dark"> <span class="pcoded-micon"><i
						class="ti-layout-grid2-alt"></i></span> <span class="pcoded-mtext"
					data-i18n="nav.basic-components.main">Cadastro</span> <span
					class="pcoded-mcaret"></span>
			</a>
				<ul class="pcoded-submenu">
					
						<li class=" "><a
							href="<%=request.getContextPath()%>/ServletUsuarioContoller?acao=ListarUser"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.basic-components.alert">Usuário</span> <span
								class="pcoded-mcaret"></span>
						</a></li>
					

					<li class=" "><a
						href="<%=request.getContextPath()%>/ServletColaboradoresController?acao=ListarUser"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-angle-right"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.basic-components.breadcrumbs">Colaboradores</span>
							<span class="pcoded-mcaret"></span>
					</a></li>

				</ul></li>
		</ul>
		</c:if>
		<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'VENDAS' || perfil == 'POSVENDAS' || perfil == 'RH' || perfil == 'TREINAMENTO'}">
		<ul class="pcoded-item pcoded-left-item">
			<li class="active"><a
				href="<%=request.getContextPath()%>/principal/principal.jsp"
				class="waves-effect waves-dark" style="margin-top: 10px;"> <span
					class="pcoded-micon"><i class="ti-archive"></i><b>D</b></span> <span
					class="pcoded-mtext" data-i18n="nav.dash.main">Formulários</span> <span
					class="pcoded-mcaret"></span>
			</a></li>
			<li><a
				href="<%=request.getContextPath()%>/principal/avaliacao.jsp"
				class="waves-effect waves-dark"> <span class="pcoded-micon"><i
						class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext"
					data-i18n="nav.form-components.main">Avaliação</span> <span
					class="pcoded-mcaret"></span>
			</a></li>


		</ul>
</c:if>
<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'VENDAS' || perfil == 'POSVENDAS' || perfil == 'RH' || perfil == 'TREINAMENTO'}">
		<ul class="pcoded-item pcoded-left-item">
			<li class="active"><a
				href="<%=request.getContextPath()%>/principal/principal.jsp"
				class="waves-effect waves-dark" style="margin-top: 10px;"> <span
					class="pcoded-micon"><i class="ti-stats-down"></i><b>D</b></span> <span
					class="pcoded-mtext" data-i18n="nav.dash.main">Relatórios</span> <span
					class="pcoded-mcaret"></span>
			</a></li>
			<li><a
				href="<%=request.getContextPath()%>/principal/relavaliacoes.jsp"
				class="waves-effect waves-dark"> <span class="pcoded-micon"><i
						class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext"
					data-i18n="nav.form-components.main">Rel. Avaliações</span> <span
					class="pcoded-mcaret"></span>
			</a></li>
		</ul>
		</c:if>
		<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'VENDAS' || perfil == 'TREINAMENTO' || perfil == 'VNOVOS' || perfil == 'VUSADOS' || perfil == 'VD'  || perfil == 'LEAD'  || perfil == 'AVALIACAO'  || perfil == 'ENTREGA'  || perfil == 'RECEPCIONISTA'}">
		<ul class="pcoded-item pcoded-left-item">
			<li class="active"><a
				href="<%=request.getContextPath()%>/principal/principal.jsp"
				class="waves-effect waves-dark" style="margin-top: 10px;"> <span
					class="pcoded-micon"><i class="ti-video-clapper"></i><b>D</b></span>
					<span class="pcoded-mtext" data-i18n="nav.dash.main">Vendas</span>
					<span class="pcoded-mcaret"></span>
			</a></li>
			
			<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'VENDAS' || perfil == 'TREINAMENTO' || perfil == 'VNOVOS'}">
			<ul class="pcoded-item pcoded-left-item">

				<li class="pcoded-hasmenu "><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-video-camera"></i><b>M</b></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.main">Consultor de Novos</span> <span
						class="pcoded-mcaret"></span>
				</a>
					<ul class="pcoded-submenu">
						<li class="pcoded-hasmenu "><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.main">Veiculos
									Novos</span> <span class="pcoded-mcaret"></span>
						</a>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
											1</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
											2</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
											3</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
											4</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul></li>
						<li class="pcoded-hasmenu "><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.main">NBS</span> <span
								class="pcoded-mcaret"></span>
						</a>
							<ul class="pcoded-submenu">
								<li class=""><a href="<%=request.getContextPath()%>/principal/testando.jsp"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abertura
											Ficha</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Consultar
											Agenda</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Filtrar
											Ficha</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Manutenção
											Ficha</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Test-Drive
											e Apresentação</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Consulta
											Estoque e Plano</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Ped.
											Venda - Veículo em estoque á Vista</span> <span
										class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Plano
											Mensal - Firm Order</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Ped.
											Venda - Veículo Modelo</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Reserva
											- Veículo em Estoque</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Ped.
											Vendas - Com seminovo e Financiamento</span> <span
										class="pcoded-mcaret"></span>
								</a></li>
							</ul></li>

				<li class="pcoded-hasmenu "><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.main">F&I</span> <span
						class="pcoded-mcaret"></span>
				</a>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Sistema
									Smart</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Proposta
									de Venda</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abrindo
									Prop. Financiamento</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abrindo
									Prop. Financiamento 2</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abrindo
									Prop. Consórcio</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Como
									Editar proposta</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Sitação
									da Prop. Banca</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Conferir
									Analise Banca</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul></li>

				<li class="pcoded-hasmenu "><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.main">AutoAvaliar</span>
						<span class="pcoded-mcaret"></span>
				</a>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Como
									Logar</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Processo
									Autoavaliar</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul></li>

				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-23">Financeiro</span> <span
						class="pcoded-mcaret"></span>
				</a></li>

				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-23">Consórcio</span> <span
						class="pcoded-mcaret"></span>
				</a></li>

				<li class="pcoded-hasmenu "><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.main">Unico Auto</span> <span
						class="pcoded-mcaret"></span>
				</a>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Treinamento
									1</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Treinamento
									2</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul></li>

				<li class="pcoded-hasmenu "><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.main">Entrega
							Técnica</span> <span class="pcoded-mcaret"></span>
				</a>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Passo
									de Vendas - Entrega</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">One
									Toyota</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul></li>

				<li class="pcoded-hasmenu "><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.main">Simulação
							Proc. de Vendas</span> <span class="pcoded-mcaret"></span>
				</a>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Qualificação</span>
								<span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Test-Drive
									e Apresentação</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
									- Processo de Vendas</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul></li>
			</ul>
			</li></ul>
			</c:if>


		<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'VENDAS' || perfil == 'TREINAMENTO' || perfil == 'VUSADOS'}">
		<ul class="pcoded-item pcoded-left-item">
			<li class="pcoded-hasmenu "><a href="javascript:void(0)"
				class="waves-effect waves-dark"> <span class="pcoded-micon"><i
						class="ti-video-camera"></i><b>M</b></span> <span class="pcoded-mtext"
					data-i18n="nav.menu-levels.main">Consultor Seminovos</span> <span
					class="pcoded-mcaret"></span>
			</a>
				<ul class="pcoded-submenu">
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Veiculos
								Novos</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										3</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										4</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Veículos
								Concorrência</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										3</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										4</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										5</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">NBS</span> <span
							class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Cadastro
										de Clientes</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Criar
										evento sem Cadastro</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Alterar
										Cad. e importar no evento</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Encerrar
										evento</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Emitir
										Proposta</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Inserir
										avaliação e financiamento</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Processo
										de Entrega</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Unico
										Auto Documentação</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Unico
										Auto Abertura de Processo</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Consultar
										estoque no NBS</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">F&I</span> <span
							class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Sistema
										Smart</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Proposta
										de Venda a vista</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abrindo
										Prop. Financiamento 1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abrindo
										Prop. Financiamento 2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abrindo
										Prop. de Consórcio</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Como
										editar Proposta</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Situação
										Prop. na Banca</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Conferir
										Analise da Banca</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Unico Auto</span>
							<span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Treinamento
										1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Treinamento
										2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Auto
								Avaliar</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Treinamento
										1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Treinamento
										2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class=""><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-angle-right"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-23">Financeiro</span> <span
							class="pcoded-mcaret"></span>
					</a></li>

					<li class=""><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-angle-right"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-23">Consórcio</span> <span
							class="pcoded-mcaret"></span>
					</a></li>



					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Entrega
								Técnica</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Passo
										de Vendas - Entrega</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">One
										Toyota</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Simulação
								Proc. de Vendas</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Qualificação</span>
									<span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Test-Drive
										e Apresentação</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
										- Processo de Vendas</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

				</ul></li>
		</ul>
</c:if>
<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'VENDAS' || perfil == 'TREINAMENTO' || perfil == 'VD'}">
		<ul class="pcoded-item pcoded-left-item">
			<li class="pcoded-hasmenu "><a href="javascript:void(0)"
				class="waves-effect waves-dark"> <span class="pcoded-micon"><i
						class="ti-video-camera"></i><b>M</b></span> <span class="pcoded-mtext"
					data-i18n="nav.menu-levels.main">Consult. Venda Direta</span> <span
					class="pcoded-mcaret"></span>
			</a>
				<ul class="pcoded-submenu">
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Veiculos
								Novos</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										3</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										4</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Sistema de
								VD</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Como
										acessar SVD</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Como
										fazer novos Pedidos</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Informações
										Adicionais</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Ped.
										de Frotista sem isenção do IPI</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Ped.
										Produtor Rural</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Ped.
										Taxista com Isenção IPI</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Ped.
										Taxista sem Isenção IPI</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Ped.
										PPD com Isen. IPI e ICMS - Beneficiario Condutor</span> <span
									class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Ped.
										PPD com Isen. IPI e ICMS</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Cadastro
										NF</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Cadastro
										de Boleto</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Pós
										Faturamento</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">NBS</span> <span
							class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abertura
										ficha Cliente</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Consulta
										Agenda</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Filtrar
										ficha Cliente-Manutenção</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Manutenção
										Ficha Cliente</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Test-Drive
										e Apresentação</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Consulta
										Estoque e Plano</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Ped.
										Venda - Veículo em estoque á Vista</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Plano
										Mensal - Firm Order</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Ped.
										Venda - Veículo Modelo</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Reserva
										- Veículo em Estoque</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Ped.
										Vendas - Com seminovo e Financiamento</span> <span
									class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">F&I</span> <span
							class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Sistema
										Smart</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Proposta
										de Venda a vista</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abrindo
										Prop. Financiamento 1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abrindo
										Prop. Financiamento 2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abrindo
										Prop. de Consórcio</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Como
										editar Proposta</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Situação
										Prop. na Banca</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Conferir
										Analise da Banca</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Unico Auto</span>
							<span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Treinamento
										1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Treinamento
										2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Auto
								Avaliar</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Como
										Logar no Auto Avaliar</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Processo
										Auto Avaliar</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class=""><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-angle-right"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-23">Financeiro</span> <span
							class="pcoded-mcaret"></span>
					</a></li>

					<li class=""><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-angle-right"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-23">Consórcio</span> <span
							class="pcoded-mcaret"></span>
					</a></li>



					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Entrega
								Técnica</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Passo
										de Vendas - Entrega</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">One
										Toyota</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Simulação
								Proc. de Vendas</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Qualificação</span>
									<span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Test-Drive
										e Apresentação</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
										- Processo de Vendas</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

				</ul></li>
		</ul>
		</c:if>
<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'VENDAS' || perfil == 'TREINAMENTO' || perfil == 'LEAD'}">
		<ul class="pcoded-item pcoded-left-item">
			<li class="pcoded-hasmenu "><a href="javascript:void(0)"
				class="waves-effect waves-dark"> <span class="pcoded-micon"><i
						class="ti-video-camera"></i><b>M</b></span> <span class="pcoded-mtext"
					data-i18n="nav.menu-levels.main">SDR - Lead</span> <span
					class="pcoded-mcaret"></span>
			</a>
				<ul class="pcoded-submenu">
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Veiculos
								Novos</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										3</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										4</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Veículos
								Concorrência</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">NBS</span> <span
							class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abertura
										de Ficha Cliente</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Consultar
										Agenda</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Filtrar
										ficha Cliente</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Manutenção
										ficha Cliente</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Test-Drive
										e Apresentação</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>


					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Auto
								Avaliar</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Treinamento
										1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Treinamento
										2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Simulação
								Proc. de Vendas</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Qualificação</span>
									<span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Test-Drive
										e Apresentação</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
										- Processo de Vendas</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

				</ul></li>
		</ul>
		</c:if>
<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'VENDAS' || perfil == 'TREINAMENTO' || perfil == 'ENTREGA'}">
		<ul class="pcoded-item pcoded-left-item">
			<li class="pcoded-hasmenu "><a href="javascript:void(0)"
				class="waves-effect waves-dark"> <span class="pcoded-micon"><i
						class="ti-video-camera"></i><b>M</b></span> <span class="pcoded-mtext"
					data-i18n="nav.menu-levels.main">Entrega Técnica</span> <span
					class="pcoded-mcaret"></span>
			</a>
				<ul class="pcoded-submenu">
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Veiculos
								Novos</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										3</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										4</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">One Toyota</span>
							<span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">O
										que é o One TOYOTA?</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
										- Manual One Toyota</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
										- Perguntas e Resposta OT</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
										- Guia One Toyota</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Processo de
								Entrega</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PV15</span>
									<span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">One
										Toyota - PV15</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PV16</span>
									<span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">One
										Toyota - PV16</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PV17
										- 20</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">One
										Toyota - PV17 - 20</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

				</ul></li>
		</ul>
		</c:if>
<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'VENDAS' || perfil == 'TREINAMENTO' || perfil == 'AVALIACAO'}">
		<ul class="pcoded-item pcoded-left-item">
			<li class="pcoded-hasmenu "><a href="javascript:void(0)"
				class="waves-effect waves-dark"> <span class="pcoded-micon"><i
						class="ti-video-camera"></i><b>M</b></span> <span class="pcoded-mtext"
					data-i18n="nav.menu-levels.main">Avaliação</span> <span
					class="pcoded-mcaret"></span>
			</a>
				<ul class="pcoded-submenu">
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Auto
								Avaliar</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">One Toyota</span>
							<span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">O
										que é o One TOYOTA?</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
										- Manual One Toyota</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
										- Perguntas e Resposta OT</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
										- Guia One Toyota</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
										- Pontuação One Toyota</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Videos</span> <span
							class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										3</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

				</ul></li>
		</ul>
		</c:if>
	<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'VENDAS' || perfil == 'TREINAMENTO' || perfil == 'RECEPCIONISTA'}">
		<ul class="pcoded-item pcoded-left-item">
			<li class="pcoded-hasmenu "><a href="javascript:void(0)"
				class="waves-effect waves-dark"> <span class="pcoded-micon"><i
						class="ti-video-camera"></i><b>M</b></span> <span class="pcoded-mtext"
					data-i18n="nav.menu-levels.main">Recepcionista</span> <span
					class="pcoded-mcaret"></span>
			</a>
				<ul class="pcoded-submenu">
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Veiculos
								Novos</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										1</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										2</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										3</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										4</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Simulação
								Processo Vendas</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Qualificação</span>
									<span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Test-Drive
										e Apresentação</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF-
										- Processo de Vendas</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">Recepção</span> <span
							class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
										PDF</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>

				</ul>
		</ul>
		</c:if>
		</ul>
</c:if>

<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'POSVENDAS' || perfil == 'TREINAMENTO' || perfil == 'CONSULTORPV'  || perfil == 'LIDERRECEP' || perfil == 'GARANTIA'}">
		<ul class="pcoded-item pcoded-left-item">
			<li class="active"><a
				href="<%=request.getContextPath()%>/principal/principal.jsp"
				class="waves-effect waves-dark" style="margin-top: 10px;"> <span
					class="pcoded-micon"><i class="ti-car"></i><b>D</b></span> <span
					class="pcoded-mtext" data-i18n="nav.dash.main">Pós-Vendas</span> <span
					class="pcoded-mcaret"></span>
			</a></li>
			<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'POSVENDAS' || perfil == 'TREINAMENTO' || perfil == 'CONSULTORPV'}">
			<ul class="pcoded-item pcoded-left-item">
				<li class="pcoded-hasmenu "><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-video-camera"></i><b>M</b></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.main">Consultor</span> <span
						class="pcoded-mcaret"></span>
				</a>
					<ul class="pcoded-submenu">
						<li class="pcoded-hasmenu "><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.main">NBS</span> <span
								class="pcoded-mcaret"></span>
						</a>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abert.
											OS Cliente Passante</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abert.
											OS cliente Agendado</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Preenchimento
											da OFIC</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Transição
											de tempo em OS revisão</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul></li>
						<li class="pcoded-hasmenu "><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.main">10 Passos
									de Serviços</span> <span class="pcoded-mcaret"></span>
						</a>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abert.
											OS com cliente passante</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abert.
											OS com cliente agendado</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Preenchimento
											da OFIC</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-submenu">
								<li class=""><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-angle-right"></i></span> <span class="pcoded-mtext"
										data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Transição
											de tempo em OS revisão</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul></li>

				<li class="pcoded-hasmenu "><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.main">Veiculos
							Novos</span> <span class="pcoded-mcaret"></span>
				</a>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
									1</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
									2</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
									3</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Link
									4</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul></li>

				<li class="pcoded-hasmenu "><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.main">Simulação</span> <span
						class="pcoded-mcaret"></span>
				</a>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abertura
									OS cliente Passante</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul></li>

				<li class="pcoded-hasmenu "><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.main">One Toyota</span> <span
						class="pcoded-mcaret"></span>
				</a>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">O
									que é One Toyota</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
									- Manual One Toyota</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
									- Perguntas e Respostas OT</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
									- Guia One Toyota</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
									- Pontuação One Toyota</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul></li>

				<li class="pcoded-hasmenu "><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.main">Dealer
							Evaluation</span> <span class="pcoded-mcaret"></span>
				</a>
					<ul class="pcoded-submenu">
						<li class=""><a href="javascript:void(0)"
							class="waves-effect waves-dark"> <span class="pcoded-micon"><i
									class="ti-angle-right"></i></span> <span class="pcoded-mtext"
								data-i18n="nav.menu-levels.menu-level-22.menu-level-31">O
									que é Dealer Evaluation?</span> <span class="pcoded-mcaret"></span>
						</a></li>
					</ul></li>
			</ul>
			</ul>
			</c:if>
			
			

		<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'POSVENDAS' || perfil == 'TREINAMENTO' || perfil == 'LIDERRECEP'}">
		<ul class="pcoded-item pcoded-left-item">
			<li class="pcoded-hasmenu "><a href="javascript:void(0)"
				class="waves-effect waves-dark"> <span class="pcoded-micon"><i
						class="ti-video-camera"></i><b>M</b></span> <span class="pcoded-mtext"
					data-i18n="nav.menu-levels.main">Lider Recepção</span> <span
					class="pcoded-mcaret"></span>
			</a>
				<ul class="pcoded-submenu">
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">NBS</span> <span
							class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abert.
										OS Cliente Passante</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abert.
										OS cliente Agendado</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Preenchimento
										da OFIC</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Transição
										de tempo em OS revisão</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul></li>
					<li class="pcoded-hasmenu "><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.main">10 Passos
								de Serviços</span> <span class="pcoded-mcaret"></span>
					</a>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abert.
										OS com cliente passante</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abert.
										OS com cliente agendado</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Preenchimento
										da OFIC</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="javascript:void(0)"
								class="waves-effect waves-dark"> <span class="pcoded-micon"><i
										class="ti-angle-right"></i></span> <span class="pcoded-mtext"
									data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Transição
										de tempo em OS revisão</span> <span class="pcoded-mcaret"></span>
							</a></li>
						</ul>
			<li class="pcoded-hasmenu "><a href="javascript:void(0)"
				class="waves-effect waves-dark"> <span class="pcoded-micon"><i
						class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
					data-i18n="nav.menu-levels.menu-level-22.main">IPSOS</span> <span
					class="pcoded-mcaret"></span>
			</a>
				<ul class="pcoded-submenu">
					<li class=""><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-angle-right"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Cronograma
								IPSOS</span> <span class="pcoded-mcaret"></span>
					</a></li>
				</ul>
				<ul class="pcoded-submenu">
					<li class=""><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-angle-right"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Consulta
								de Verbalizações</span> <span class="pcoded-mcaret"></span>
					</a></li>
				</ul>
				<ul class="pcoded-submenu">
					<li class=""><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-angle-right"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Indicador
								por Consultor</span> <span class="pcoded-mcaret"></span>
					</a></li>
				</ul>
				<ul class="pcoded-submenu">
					<li class=""><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-angle-right"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Monitoramento
								de Índices</span> <span class="pcoded-mcaret"></span>
					</a></li>
				</ul>
				<ul class="pcoded-submenu">
					<li class=""><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-angle-right"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Ranking
								de Distribuidores</span> <span class="pcoded-mcaret"></span>
					</a></li>
				</ul></li>

			<li class="pcoded-hasmenu "><a href="javascript:void(0)"
				class="waves-effect waves-dark"> <span class="pcoded-micon"><i
						class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
					data-i18n="nav.menu-levels.menu-level-22.main">One Toyota</span> <span
					class="pcoded-mcaret"></span>
			</a>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">O
							que é One Toyota</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
							- Manual One Toyota</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
							- Perguntas e Respostas OT</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
							- Guia One Toyota</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">PDF
							- Pontuação One Toyota</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul></li>

			<li class="pcoded-hasmenu "><a href="javascript:void(0)"
				class="waves-effect waves-dark"> <span class="pcoded-micon"><i
						class="ti-direction-alt"></i></span> <span class="pcoded-mtext"
					data-i18n="nav.menu-levels.menu-level-22.main">Dealer
						Evaluation</span> <span class="pcoded-mcaret"></span>
			</a>
				<ul class="pcoded-submenu">
					<li class=""><a href="javascript:void(0)"
						class="waves-effect waves-dark"> <span class="pcoded-micon"><i
								class="ti-angle-right"></i></span> <span class="pcoded-mtext"
							data-i18n="nav.menu-levels.menu-level-22.menu-level-31">O
								que é Dealer Evaluation?</span> <span class="pcoded-mcaret"></span>
					</a></li>
				</ul></li>
		</ul>
		</ul>
		</c:if>
		<c:if test="${perfil == 'ADMIN' || perfil == 'TI' || perfil == 'POSVENDAS' || perfil == 'TREINAMENTO' || perfil == 'GARANTIA'}">
		<ul class="pcoded-item pcoded-left-item">
		<li class="pcoded-hasmenu "><a href="javascript:void(0)"
			class="waves-effect waves-dark"> <span class="pcoded-micon"><i
					class="ti-video-camera"></i><b>M</b></span> <span class="pcoded-mtext"
				data-i18n="nav.menu-levels.main">Garantia</span> <span
				class="pcoded-mcaret"></span>
		</a>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Abert.
							autorização prévia Garantia</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Analise
							do HSV - Histórico</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Emissão
							NF Complementar Peças</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Emissão
							NF Complementar Mão de Obra</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Emissão
							NF Simples Remessa</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Envio
							de Peças - Inicio do processo</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Envio
							de Peças - Embal. e regras de volume</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Portal
							Toyota - Introdução</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Preenc.
							de RG (GS) Tempo Padrão</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Preenc.
							de RG - Inspeçãp Boas Vindas</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Prenc.
							de RG - Mão de Obra 1ª Revisão</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Preenc.
							de RG - Recall</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Preenc.
							de RG - Tempo Corrido</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Relatórios
							Mensais - Garantia</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Treinamento
							Politica de Garantia</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">TWPC
							- Introdução</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			<ul class="pcoded-submenu">
				<li class=""><a href="javascript:void(0)"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext"
						data-i18n="nav.menu-levels.menu-level-22.menu-level-31">TWSD
							- Introdução</span> <span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
			</li>
			</ul>
			</c:if>
			</ul> 
			
			</c:if>
			
	</div>
</nav>