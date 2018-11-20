package controlador;


/**
    APS Desenvolvimento de aplicações WEB 
    Alunos: Allan Wanderley Alves - 2016201683
            Rafael Osorio - 2010101281
            Rafael Ferreira de Souza - 2014200413 
 */
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.CifraCesar;

@WebServlet(urlPatterns = {"/ServletCesar"})
public class ServletCesar extends HttpServlet {
    String respostaCifra = "";
        String respostaDecifra = "";
	
    public ServletCesar() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
            if (request.getParameter("tipo").equalsIgnoreCase("Cifrar")){
                CifraCesar cod = new CifraCesar();
                cod.setTextoS(request.getParameter("palavraACifrar"));
                respostaCifra = cod.cifrando();
                response.sendRedirect("/Cifra-cesar/code.jsp?c="+respostaCifra+"&o="+cod.getTextoS()+"&tipo="+request.getParameter("tipo"));
            }
            if (request.getParameter("tipo").equalsIgnoreCase("Decifrar")){
                CifraCesar cod = new CifraCesar();
                cod.setTextoS(request.getParameter("palavraADecifrar"));
                respostaDecifra = cod.decifrar(request.getParameter("palavraADecifrar"));
                System.out.println(respostaDecifra);
                response.sendRedirect("/Cifra-cesar/code.jsp?c="+respostaDecifra+"&o="+request.getParameter("palavraADecifrar").toUpperCase()+"&tipo="+request.getParameter("tipo"));
            }
    }
}