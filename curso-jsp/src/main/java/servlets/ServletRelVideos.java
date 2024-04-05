	package servlets;

import java.io.IOException;
import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;

import dao.DAORelVideos;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ModelLogin;

public class ServletRelVideos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DAORelVideos daoRelVideos = new DAORelVideos();
       
    public ServletRelVideos() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			String acao = request.getParameter("acao");
			
			if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("buscarColaboradoresAjax")) {
				
				String nomeBusca = request.getParameter("nomeBusca");
				
			List<ModelLogin> dadosJsonUser = daoRelVideos.consultaUsuarioList(nomeBusca);
			
			ObjectMapper mapper = new ObjectMapper();
			
			String json = mapper.writeValueAsString(dadosJsonUser);
			
			response.addHeader("totalPagina", ""+ daoRelVideos.consultaUsuarioListTotalPaginaPaginacao(nomeBusca));
			response.getWriter().write(json);
				
			} 
			
			else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("buscarEditarRel")) {
			    String id = request.getParameter("id");
			    ModelLogin modelLogin = daoRelVideos.consultaUsuarioID(Long.parseLong(id));
			    String perfil = modelLogin.getPerfil();

			    String nextPage = "relsemsetor.jsp"; // Página padrão

			    if (perfil != null && !perfil.isEmpty()) {
			        if (perfil.toUpperCase().contains("CONSULTORPV")) {
			            nextPage = "relconsultorpv.jsp";
			        } else if (perfil.toUpperCase().contains("VNOVOS")) {
			            nextPage = "relvnovos.jsp";
			        } else if (perfil.toUpperCase().contains("VD")) {
			            nextPage = "relvd.jsp";
			        }
			    }

			    request.setAttribute("msg", "Colaborador Selecionado - OK");
			    request.setAttribute("modelLogin", modelLogin);
			    request.getRequestDispatcher("principal/" + nextPage).forward(request, response);
			}




			
			else if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("buscarEditar")) {
				
				String id = request.getParameter("id");
				
				ModelLogin modelLogin = daoRelVideos.consultaUsuarioID(Long.parseLong(id));
				
				request.setAttribute("msg", "Colaborador Selecionado - OK");
				request.setAttribute("modelLogin", modelLogin);
				request.getRequestDispatcher("principal/avaliacao.jsp").forward(request, response);
				
			}else {
				request.getRequestDispatcher("principal/avaliacao.jsp").forward(request, response);
			}
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);

	}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
		
	}