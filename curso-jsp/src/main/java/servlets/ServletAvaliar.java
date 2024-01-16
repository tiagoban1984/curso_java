package servlets;

import java.io.IOException;
import java.util.List;

import dao.DAOAvaliarRepository;
import dao.DAOColaboradoresReository;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ModelAvaliar;
import model.ModelLogin;

public class ServletAvaliar extends ServletGenericUtil {
	private static final long serialVersionUID = 1L;
	
	private DAOAvaliarRepository daoAvaliarRepository = new DAOAvaliarRepository();
	
	
	private DAOColaboradoresReository daoColaboradoresReository = new DAOColaboradoresReository();

	public ServletAvaliar() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		
		String iduser = request.getParameter("iduser");
		
		if (iduser != null && !iduser.isEmpty()) {
			
		ModelLogin modelLogin = daoColaboradoresReository.consultaColaboradorID(Long.parseLong(iduser));
		
		List<ModelAvaliar> modelAvaliars = daoAvaliarRepository.listAvaliacao(modelLogin.getId());
		
		request.setAttribute("modelAvaliars", modelAvaliars);
		request.setAttribute("modelLogin", modelLogin);
		request.getRequestDispatcher("principal/avaliar.jsp").forward(request, response);
		
	}	else {
			
					List<ModelLogin> modelLogins = daoColaboradoresReository.consultaColaboradoresList();
					request.setAttribute("modelLogins", modelLogins);
					request.setAttribute("totalPagina", daoColaboradoresReository.totalPagina());
					request.getRequestDispatcher("principal/avaliar.jsp").forward(request, response);
		}
		
	}catch (Exception e) {
		e.printStackTrace();
}
	
	} 
		
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			try {
		String colaboradores_pai_id = request.getParameter("id");
		System.out.println(colaboradores_pai_id);
        String numero = request.getParameter("numero");
        System.out.println(numero);
        

        ModelAvaliar modelAvaliar = new ModelAvaliar();
        
        modelAvaliar.setAval1(numero);
        modelAvaliar.setColaboradores_pai_id(daoColaboradoresReository.consultaColaboradorID(Long.parseLong(colaboradores_pai_id)));
        modelAvaliar.setColaboradores_cad_id(super.getUserLogadoObjt(request));
        
        daoAvaliarRepository.gravaAvaliacao(modelAvaliar);
        
        List<ModelAvaliar> modelAvaliars = daoAvaliarRepository.listAvaliacao(Long.parseLong(colaboradores_pai_id));
        
        
        request.setAttribute("modelAvaliars", modelAvaliars);
        request.setAttribute("msg", "Avaliação salva com sucesso.");
		request.getRequestDispatcher("principal/avaliar.jsp").forward(request, response);
        
			 } catch (Exception e) {
			        e.printStackTrace();
			    } 
		
/*		try {
	        

	        
	        
	        ModelLogin modelLogin = daoAvaliacaoRepository.consultaColaboradorID(colaboradores_pai_id);

	        // Ajuste aqui: atributo correto e nome consistente
	        
	        request.setAttribute("modelLogin", modelLogin);
	        

	        
	        request.getRequestDispatcher("principal/avaliacao.jsp").forward(request, response);

	   */
	} 

}
