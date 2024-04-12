package servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
import dao.DAOReservarSala;
import model.ModelLogin;

public class ServletReservaSala extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private DAOReservarSala daoReservarSala;

    public ServletReservaSala() {
        super();
        daoReservarSala = new DAOReservarSala();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String dataReserva = request.getParameter("dataReserva");
            String colaboradoresPaiId = request.getParameter("usuario");
            System.out.println(colaboradoresPaiId);
            System.out.println(dataReserva);

            ModelLogin modelLogin = new ModelLogin();
            modelLogin.setDatareserva(dataReserva);
            modelLogin.setLogin(colaboradoresPaiId);
            
            daoReservarSala.reservarSala(modelLogin);

            // Redirecionar para uma página de sucesso após o processamento
            response.sendRedirect(request.getContextPath() + "/principal/testando.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            // Redirecionar para uma página de erro em caso de exceção
            RequestDispatcher dispatcher = request.getRequestDispatcher("/erro.jsp");
            request.setAttribute("msg", e.getMessage());
            dispatcher.forward(request, response);
        }
    }
}
