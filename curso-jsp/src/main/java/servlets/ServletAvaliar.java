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
        
        String numero31 = request.getParameter("aval31");
        String numero32 = request.getParameter("aval32");
        String numero33 = request.getParameter("aval33");
        
        String numero41 = request.getParameter("aval41");
        String numero42 = request.getParameter("aval42");
        String numero43 = request.getParameter("aval43");
        
        String numero51 = request.getParameter("aval51");
        String numero52 = request.getParameter("aval52");
        String numero53 = request.getParameter("aval53");
        
        String numero61 = request.getParameter("aval61");
        String numero62 = request.getParameter("aval62");
        String numero63 = request.getParameter("aval63");
        
        String numero71 = request.getParameter("aval71");
        String numero72 = request.getParameter("aval72");
        String numero73 = request.getParameter("aval73");
        
        String numero8 = request.getParameter("aval8");
        
        String tmpexperiencia = request.getParameter("experiencia");
        System.out.println(tmpexperiencia);
        
        String nota1 = numero;
        String nota2 = numero1;
        String nota3 = numero2;
        
        String nota21 = numero21;
        String nota22 = numero22;
        String nota23 = numero23;
        
        String nota31 = numero31;
        String nota32 = numero32;
        String nota33 = numero33;
        
        String nota41 = numero41;
        String nota42 = numero42;
        String nota43 = numero43;
        
        String nota51 = numero51;
        String nota52 = numero52;
        String nota53 = numero53;
        
        String nota61 = numero61;
        String nota62 = numero62;
        String nota63 = numero63;
        
        String nota71 = numero71;
        String nota72 = numero72;
        String nota73 = numero73;
        
        String nota8 = numero8;
        

        // Convertendo as strings para números (supondo que são valores numéricos)
        double nota1Value = Double.parseDouble(nota1);
        double nota2Value = Double.parseDouble(nota2);
        double nota3Value = Double.parseDouble(nota3);
        
        double nota21Value = Double.parseDouble(nota21);
        double nota22Value = Double.parseDouble(nota22);
        double nota23Value = Double.parseDouble(nota23);
        
        double nota31Value = Double.parseDouble(nota31);
        double nota32Value = Double.parseDouble(nota32);
        double nota33Value = Double.parseDouble(nota33);
        
        double nota41Value = Double.parseDouble(nota41);
        double nota42Value = Double.parseDouble(nota42);
        double nota43Value = Double.parseDouble(nota43);
        
        double nota51Value = Double.parseDouble(nota51);
        double nota52Value = Double.parseDouble(nota52);
        double nota53Value = Double.parseDouble(nota53);
        
        double nota61Value = Double.parseDouble(nota61);
        double nota62Value = Double.parseDouble(nota62);
        double nota63Value = Double.parseDouble(nota63);
        
        double nota71Value = Double.parseDouble(nota71);
        double nota72Value = Double.parseDouble(nota72);
        double nota73Value = Double.parseDouble(nota73);
        
        double nota8Value = Double.parseDouble(nota8);

        // Somando nota
        double media = (nota1Value + nota2Value + nota3Value);
        
        double media2 = (nota21Value + nota22Value + nota23Value);
        
        double media3 = (nota31Value + nota32Value + nota33Value);
        
        double media4 = (nota41Value + nota42Value + nota43Value);
        
        double media5 = (nota51Value + nota52Value + nota53Value);
        
        double media6 = (nota61Value + nota62Value + nota63Value);
        
        double media7 = (nota71Value + nota72Value + nota73Value);
        
        double media8 = nota8Value;
        
        double mediahalo = (media + media2 + media3 + media4 + media5 + media6 + media7);

        ModelAvaliar modelAvaliar = new ModelAvaliar();
        
        modelAvaliar.setAval1(numero);
        modelAvaliar.setAval2(numero1);
        modelAvaliar.setAval3(numero2);
        
        modelAvaliar.setAval21(numero21);
        modelAvaliar.setAval22(numero22);
        modelAvaliar.setAval23(numero23);
        
        modelAvaliar.setAval31(numero31);
        modelAvaliar.setAval32(numero32);
        modelAvaliar.setAval33(numero33);
        
        modelAvaliar.setAval41(numero41);
        modelAvaliar.setAval42(numero42);
        modelAvaliar.setAval43(numero43);
        
        modelAvaliar.setAval51(numero51);
        modelAvaliar.setAval52(numero52);
        modelAvaliar.setAval53(numero53);
        
        modelAvaliar.setAval61(numero61);
        modelAvaliar.setAval62(numero62);
        modelAvaliar.setAval63(numero63);
        
        modelAvaliar.setAval71(numero71);
        modelAvaliar.setAval72(numero72);
        modelAvaliar.setAval73(numero73);
        
        modelAvaliar.setAval8(numero8);
        
        modelAvaliar.setMediavaliacao(media);
        
        modelAvaliar.setMediavaliacao2(media2);
        
        modelAvaliar.setMediavaliacao3(media3);
        
        modelAvaliar.setMediavaliacao4(media4);
        
        modelAvaliar.setMediavaliacao5(media5);
        
        modelAvaliar.setMediavaliacao6(media6);
        
        modelAvaliar.setMediavaliacao7(media7);
        
        modelAvaliar.setMediavaliacao8(media8);
        
        modelAvaliar.setMediatotalhalo(mediahalo);
        
        modelAvaliar.setExperiencia(tmpexperiencia);
        
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
