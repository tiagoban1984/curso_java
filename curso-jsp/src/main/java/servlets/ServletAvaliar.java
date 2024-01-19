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
		
		String iduserel = request.getParameter("iduserel");
		String iduser = request.getParameter("iduser");
		
		if (iduser != null && !iduser.isEmpty()) {
			
		ModelLogin modelLogin = daoColaboradoresReository.consultaColaboradorID(Long.parseLong(iduser));
		
		List<ModelAvaliar> modelAvaliars = daoAvaliarRepository.listAvaliacao(modelLogin.getId());
		
		request.setAttribute("modelAvaliars", modelAvaliars);
		request.setAttribute("modelLogin", modelLogin);
		request.getRequestDispatcher("principal/avaliar.jsp").forward(request, response);
		
	}	else if (iduserel != null && !iduserel.isEmpty()) {
		
			
		ModelLogin modelLogin = daoColaboradoresReository.imprimirRelatorio(Long.parseLong(iduserel));
		
		List<ModelAvaliar> modelAvaliars = daoAvaliarRepository.listAvaliacao(modelLogin.getId());
		
		request.setAttribute("modelAvaliars", modelAvaliars);
		request.setAttribute("modelLogin", modelLogin);
		request.getRequestDispatcher("principal/imprimiraval.jsp").forward(request, response);
		
	}else {
			
					List<ModelLogin> modelLogins = daoColaboradoresReository.consultaColaboradoresList();
					request.setAttribute("modelLogins", modelLogins);
					request.setAttribute("totalPagina", daoColaboradoresReository.totalPagina());
					request.getRequestDispatcher("principal/imprimiraval.jsp").forward(request, response);
		}
		
	}catch (Exception e) {
		e.printStackTrace();
}
	
	} 
		
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			try {
		String colaboradores_pai_id = request.getParameter("idaval");
        String numero = request.getParameter("aval1");
        String numero1 = request.getParameter("aval2");
        String numero2 = request.getParameter("aval3");
        
        String numero21 = request.getParameter("aval21");
        String numero22 = request.getParameter("aval22");
        String numero23 = request.getParameter("aval23");
        
        String nota1 = numero;
        String nota2 = numero1;
        String nota3 = numero2;
        
        String nota21 = numero21;
        String nota22 = numero22;
        String nota23 = numero23;

        // Convertendo as strings para números (supondo que são valores numéricos)
        double nota1Value = Double.parseDouble(nota1);
        double nota2Value = Double.parseDouble(nota2);
        double nota3Value = Double.parseDouble(nota3);
        
        double nota21Value = Double.parseDouble(nota21);
        double nota22Value = Double.parseDouble(nota22);
        double nota23Value = Double.parseDouble(nota23);

        // Calculando a média
        double media = (nota1Value + nota2Value + nota3Value) / 3;
        
        double media2 = (nota21Value + nota22Value + nota23Value) / 3;

        ModelAvaliar modelAvaliar = new ModelAvaliar();
        
        modelAvaliar.setAval1(numero);
        modelAvaliar.setAval2(numero1);
        modelAvaliar.setAval3(numero2);
        
        modelAvaliar.setAval21(numero21);
        modelAvaliar.setAval22(numero22);
        modelAvaliar.setAval23(numero23);
        
        modelAvaliar.setMediavaliacao(media);
        
        modelAvaliar.setMediavaliacao2(media2);
        
        modelAvaliar.setColaboradores_pai_id(daoColaboradoresReository.consultaColaboradorID(Long.parseLong(colaboradores_pai_id)));
        
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
