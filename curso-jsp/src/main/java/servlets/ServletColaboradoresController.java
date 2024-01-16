package servlets;

import java.io.IOException;
import java.util.List;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.ObjectMapper;

import dao.DAOColaboradoresReository;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ModelLogin;



public class ServletColaboradoresController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DAOColaboradoresReository daoColaboradoresReository = new DAOColaboradoresReository();
       
    public ServletColaboradoresController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		
		String acao = request.getParameter("acao");
		
		if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("deletar")) {
			String idUser = request.getParameter("id");
			daoColaboradoresReository.deletarUser(idUser);
			
			List<ModelLogin> modelLogins = daoColaboradoresReository.consultaColaboradoresList();
			request.setAttribute("modelLogins", modelLogins);
			request.setAttribute("msg", "Excluido com sucesso!");
			request.setAttribute("totalPagina", daoColaboradoresReository.totalPagina());
			request.getRequestDispatcher("principal/colaboradores.jsp").forward(request, response);
			
		} 
		else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("deletarajax")) {
				String idUser = request.getParameter("id");
				daoColaboradoresReository.deletarUser(idUser);
				response.getWriter().write("Excluido com sucesso!");
				
			} 
		
		else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("buscarColaboradoresAjax")) {
				String nomeBusca = request.getParameter("nomeBusca");
				
				System.out.println(nomeBusca);

				
				List<ModelLogin> dadosJsonUser = daoColaboradoresReository.consultaColaboradoresList(nomeBusca);
				
				ObjectMapper mapper = new ObjectMapper();
				String json = mapper.writeValueAsString(dadosJsonUser);
				response.addHeader("totalPagina", ""+ daoColaboradoresReository.consultaColaboradoresListTotalPaginacao(nomeBusca));
				response.getWriter().write(json);
				
			} 
		
		else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("buscarColaboradoresAjaxPage")) {
			 
			 String nomeBusca = request.getParameter("nomeBusca");
			 String pagina = request.getParameter("pagina");
			 
			 List<ModelLogin> dadosJsonUser =  daoColaboradoresReository.consultaColaboradoresListOffSet(nomeBusca, Integer.parseInt(pagina));
			 
			 ObjectMapper mapper = new ObjectMapper();
			 
			 String json = mapper.writeValueAsString(dadosJsonUser);
			 
			 response.addHeader("totalPagina", ""+ daoColaboradoresReository.consultaColaboradoresListTotalPaginacao(nomeBusca));
			 response.getWriter().write(json);
			 
			
		} 
		
		else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("buscarEditar")) {
			String id = request.getParameter("id");

			ModelLogin modelLogin = daoColaboradoresReository.consultaColaboradorID(Long.parseLong(id));
			
			List<ModelLogin> modelLogins = daoColaboradoresReository.consultaColaboradoresList();
			request.setAttribute("modelLogins", modelLogins);
			
			request.setAttribute("msg", "Colaborador sendo editado");
			request.setAttribute("modelLogin", modelLogin);
			request.setAttribute("totalPagina", daoColaboradoresReository.totalPagina());
			request.getRequestDispatcher("principal/colaboradores.jsp").forward(request, response);
			
		} 
		
		else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("listarUser")) {

			List<ModelLogin> modelLogins = daoColaboradoresReository.consultaColaboradoresList();
			
			request.setAttribute("msg", "Colaboradores carregado");
			request.setAttribute("modelLogins", modelLogins);
			request.setAttribute("totalPagina", daoColaboradoresReository.totalPagina());
			request.getRequestDispatcher("principal/colaboradores.jsp").forward(request, response);
			
		} 
		

		 else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("paginar")) {
			
			Integer offset = Integer.parseInt(request.getParameter("pagina"));
			
			List<ModelLogin> modelLogins = daoColaboradoresReository.consultaColaboradoresListPaginada(offset);
			request.setAttribute("modelLogins", modelLogins);
			request.setAttribute("totalPagina", daoColaboradoresReository.totalPagina());
			request.getRequestDispatcher("principal/colaboradores.jsp").forward(request, response); }
		
		else {
			
				List<ModelLogin> modelLogins = daoColaboradoresReository.consultaColaboradoresList();
				request.setAttribute("modelLogins", modelLogins);
				request.setAttribute("totalPagina", daoColaboradoresReository.totalPagina());
				request.getRequestDispatcher("principal/colaboradores.jsp").forward(request, response);
			}
		
			
		
		
		}catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
				request.setAttribute("msg", e.getMessage());
				redirecionar.forward(request, response);

		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			String msg = "Operação realizada com sucesso";
		
		String id = request.getParameter("id");
		String cpf = request.getParameter("cpf");
		String nome = request.getParameter("nome");
		String setor = request.getParameter("setor");
		
		 if (cpf.length() != 11) {
		        msg = "CPF deve ter exatamente 11 dígitos.";
		        throw new Exception(msg);
		    }
		    
		
		ModelLogin modelLogin = new ModelLogin();
		
		modelLogin.setId(id != null && !id.isEmpty() ? Long.parseLong(id) : null);
		modelLogin.setNome(nome);
		modelLogin.setSetor(setor);
		modelLogin.setCpf(cpf);
		
		if (daoColaboradoresReository.validarCpf(modelLogin.getCpf()) && modelLogin.getId() == null) {
			msg = "Já existe Colaborador com o mesmo CPF.";
		}else {
			if (modelLogin.isNovo()) {
				msg = "Gravado Com sucesso!";
			}else {
				msg = "Atualizado com sucesso!";
			}
		modelLogin = daoColaboradoresReository.gravarColaborador(modelLogin);	
		}
		
		List<ModelLogin> modelLogins = daoColaboradoresReository.consultaColaboradoresList();
		request.setAttribute("modelLogins", modelLogins);
		request.setAttribute("msg", msg);
		request.setAttribute("modelLogin", modelLogin);
		request.setAttribute("totalPagina", daoColaboradoresReository.totalPagina());
		request.getRequestDispatcher("principal/colaboradores.jsp").forward(request, response);
		
		}catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);
		}
		
	}

}
