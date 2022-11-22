package dev.erebor.registrationapp.servelet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "NewContactRegistrationServlet", value =
        "/NewContactRegistrationServlet")
public class NewContactRegistrationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String telephone = request.getParameter("telephone");
        String cep = request.getParameter("cep");
        String address = request.getParameter("address");
        String addressComplement = request.getParameter("addressComplement");
        
        request.setAttribute("name", name);
        request.setAttribute("lastName", lastName);
        request.setAttribute("telephone", telephone);
        request.setAttribute("cep", cep);
        request.setAttribute("address", address);
        request.setAttribute("addressComplement", addressComplement);
        
        request.getRequestDispatcher("components/Schedule/Schedule.jsp").forward(request, response);
    }
}
