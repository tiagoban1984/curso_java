package servlets;

import java.io.IOException;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import dao.DAOVideosRepository;
import model.ModelLogin;

public class ServletVideos extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private DAOVideosRepository daoVideosRepository;

    public ServletVideos() {
        super();
        daoVideosRepository = new DAOVideosRepository();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String aberturaFicha = request.getParameter("aberturaficha") != null ? "Assistido" : "Não Assistido";
            String colaboradores_pai_id = request.getParameter("nome");
            System.out.println(colaboradores_pai_id);
            System.out.println(aberturaFicha);

            ModelLogin modelLogin = new ModelLogin();
            modelLogin.setAberturaficha(aberturaFicha);
            modelLogin.setIdaval(colaboradores_pai_id);
            
            daoVideosRepository.aberturaficha(modelLogin);

            request.getRequestDispatcher("/principal/testando.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            // Se ocorrer algum erro, você pode redirecionar para uma página de erro ou manipular de outra forma
            RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
            request.setAttribute("msg", e.getMessage());
            redirecionar.forward(request, response);
        }
    }
}
