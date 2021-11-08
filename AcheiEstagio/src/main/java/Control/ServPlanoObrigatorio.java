/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.Estagiario;
import Model.Estagio;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author renan
 */
public class ServPlanoObrigatorio extends HttpServlet {

    //Objetos Globais
    Estagio estagio;
    Estagiario estagiario; 
    
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private void pegarDados(HttpServletRequest request, HttpServletResponse response) {
        
        int semestre = Integer.parseInt(
                request.getParameter("txtSemestre"));
        
        String atividades = request.getParameter("txtAtividades");
        
        //validar
        if (validar(atividades)) {
            preencherDados(semestre, atividades);
            redirecionar("opcoesImprimir.html", request, response);
        } else {
            String erro = "Campo Atividade deve ser preenchido.";
            request.setAttribute("ERRO", erro);
            request.setAttribute("SEMESTRE", String.valueOf(semestre));
            
            redirecionar("/formPlanoObrigatorio.jsp", request, response);
        }
        
        
    }
    
    
    private void obterDadosSessao(HttpServletRequest request, HttpServletResponse response) {
        
        HttpSession sessao = request.getSession();
        String erro = "";
        
            this.estagio = (Estagio) sessao.getAttribute("ESTAGIO");
            this.estagiario = (Estagiario) sessao.getAttribute("ESTAGIARIO");
            
            
            if (estagio == null || estagiario == null) {
                erro = "Primeiro, preencha o requerimento.";
                request.setAttribute("ERRO", erro);
                redirecionar("/formReqObrigatorio.jsp", request, response);
            }
         
    }
    
    private boolean validar(String atividades) {
        return !atividades.isEmpty();
    }
    
    private void preencherDados(int semestre, String atividades) {
        //estagiario = new Estagiario();
        //estagio = new Estagio();
        
        this.estagiario.setSemestre(semestre);
        this.estagio.setAtividades(atividades);
    }
    
    private void redirecionar(String pagina, HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher rd = request.getRequestDispatcher(pagina);
        
        try {
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try {
            obterDadosSessao(request, response);
            pegarDados(request, response);
        } catch (Exception e) {
            String erro = "Primeiro, preencha o requerimento.";
            request.setAttribute("ERRO", erro);
            //redirecionar("/formReqObrigatorio.jsp", request, response);
            e.printStackTrace();
        }
        
        
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServPlanoObrigatorio</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServPlanoObrigatorio at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
