/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.Empresa;
import Model.Endereco;
import Model.Estagiario;
import Model.Estagio;
import Model.Representante;
import Model.Supervisor;
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
public class ServReqObrigatorio extends HttpServlet {

    //Objetos Globais
    Empresa empresa;
    Estagiario estagiario;
    Estagio estagio;
    Representante representante;
    Supervisor supervisor;
    Endereco endereco;
    //Endereco enderecoEmpresa;
    
    String e;
    String destino = "/formPlanoObrigatorio.jsp";
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private void recebeDados(HttpServletRequest request) {
        
        int id = Integer.parseInt(request.getParameter("txtID"));
                
        String nome = request.getParameter("txtNome");
        String curso = request.getParameter("comboCurso");
        String cpf = request.getParameter("txtCPF");
        String disciplina = request.getParameter("comboDisciplina");
        String nascimento = request.getParameter("txtNascimento");
        String endereco = request.getParameter("txtEndereco");
        String bairro = request.getParameter("txtBairro");
        String cidade = request.getParameter("txtCidade");
        String cep = request.getParameter("txtCep");
        String telefone = request.getParameter("txtTelefone");
        String professor = request.getParameter("txtProfessor");
       
        preencherEstagiario(id, nome, curso, disciplina, nascimento, endereco, bairro, cidade, cep, cpf, telefone, professor);
        
        String razao = request.getParameter("txtRazao");
        String enderecoUC = request.getParameter("txtEnderecoUC");
        String bairroUC = request.getParameter("txtBairroUC");
        String cidadeUC = request.getParameter("txtCidadeUC");
        String cepUC = request.getParameter("txtCepUC");
        String telefoneUC = request.getParameter("txtTelefoneUC");
        String cnpj = request.getParameter("txtCNPJ");
        
        preencherEmpresa(razao, enderecoUC, bairroUC, cidadeUC, cepUC, telefoneUC, cnpj);
        
        String representante = request.getParameter("txtRepresentante");
        String cargoRepresentante = request.getParameter("txtCargoRepresentante");
        String rg = request.getParameter("txtRG");
        String cpfRepresentante = request.getParameter("txtCPFRepresentante");
        
        preencherRepresentante(representante, cargoRepresentante, rg, cpfRepresentante);
        
        String supervisor = request.getParameter("txtSupervisor");
        String cargo = request.getParameter("txtCargoSupervisor");
        String email = request.getParameter("txtEmail");
        
        preencherSupervisor(supervisor, cargo, email);
        
        String dtInicio = request.getParameter("txtDtInicio");
        String dtFim = request.getParameter("txtDtFim");
        
        String ckSegunda = request.getParameter("ckSegunda");
        String ckTerca = request.getParameter("ckTerca");
        String ckQuarta = request.getParameter("ckQuarta");
        String ckQuinta = request.getParameter("ckQuinta");
        String ckSexta = request.getParameter("ckSexta");
        String ckSabado = request.getParameter("ckSabado");
        String ckDomingo = request.getParameter("ckDomingo");
        String ckVariados = request.getParameter("ckVariados");
        
        String horaEntrada = request.getParameter("txtHoraEntrada");
        String horaSaida = request.getParameter("txtHoraSaida");
        String ckHoraVariada = request.getParameter("ckHoraVariada");
        
        int horaSemanal = Integer.parseInt(request.getParameter("txtHoraSemanal"));
        
        double bolsa=0;
        if(request.getParameter("txtBolsa") != null)
            bolsa = Double.parseDouble(request.getParameter("txtBolsa"));
        
        String apolice = request.getParameter("txtApolice");
        String seguradora = request.getParameter("txtSeguradora");
        
        preencherEstagio(dtInicio, dtFim, ckVariados, ckHoraVariada, horaSemanal, 
                ckSegunda, ckTerca, ckQuarta, ckQuinta, ckSexta, ckSabado, ckDomingo,
                horaEntrada, horaSaida,bolsa, apolice, seguradora);
        
    }
    
    private void preencherEstagiario(int id, String nome, String curso, String disciplina,
            String nascimento, String endereco, String bairro, String cidade, String cep,
            String cpf, String telefone, String professor) {
       
        estagiario = new Estagiario(); //inicialização de objeto
        estagiario.setID(id);
        estagiario.setNome(nome);
        estagiario.setCurso(curso);
        estagiario.setDisciplina(disciplina);
        estagiario.setCpf(cpf);
        estagiario.setNascimento(nascimento);
        estagiario.setProfessor(professor);
        estagiario.setTelefone(telefone);
        
        this.endereco = new Endereco();
        this.endereco.setRua(endereco);
        this.endereco.setBairro(bairro);
        this.endereco.setCidade(cidade);
        this.endereco.setCep(cep);
        
        estagiario.setEndereco(this.endereco);
        
    }
    
    private void preencherEmpresa(String razao, String enderecoUC, String bairroUC, 
            String cidadeUC, String cepUC, String telefoneUC, String cnpj) {
        
        this.empresa = new Empresa();
        empresa.setRazaoSocial(razao);
        
        this.endereco = new Endereco();
        this.endereco.setRua(enderecoUC);
        this.endereco.setBairro(bairroUC);
        this.endereco.setCep(cepUC);
        this.endereco.setCidade(cidadeUC);
        
        empresa.setEndereco(endereco);
        empresa.setCnpj(cnpj);
        empresa.setTelefone(telefoneUC);
        
        
    }
    
    
    
    private void preencherRepresentante(String representante, String cargo,
            String rg, String cpf) {
        
        this.representante = new Representante();
        this.representante.setNome(representante);
        this.representante.setCargo(cargo);
        this.representante.setCpf(cpf);
        this.representante.setRg(rg);
        
    }
    
    private void preencherSupervisor(String supervisor, String cargo, String email) {
        
        this.supervisor = new Supervisor();
        this.supervisor.setNome(supervisor);
        this.supervisor.setFuncao(cargo);
        this.supervisor.setEmail(email);
        
    }
    
    private void preencherEstagio(String dtInicio, String dtFim, String ckVariados, 
            String ckHoraVariada, int horaSemanal,
            String ckSegunda, String ckTerca, String ckQuarta, String ckQuinta, 
            String ckSexta, String ckSabado, String ckDomingo,
            String horaEntrada, String horaSaida, double bolsa, String apolice, String seguradora) {
        
        this.estagio = new Estagio();
        
        estagio.setDtInicio(dtInicio);
        estagio.setDtFim(dtFim);
        estagio.setCargaSemanal(horaSemanal);
        
        
        if (ckVariados != null)
            estagio.setDiasVariados(true);
        else
            estagio.setDiasVariados(false);
        
        if (ckHoraVariada != null)
            estagio.setHoraVariada(true);
        else {
            estagio.setHoraVariada(false);
            estagio.setHrEntrada(horaEntrada);
            estagio.setHrSaida(horaSaida);
        }
        
        verificaDia(ckSabado, 0);
        verificaDia(ckDomingo, 1);
        verificaDia(ckSegunda, 2);
        verificaDia(ckTerca, 3);
        verificaDia(ckQuarta, 4);
        verificaDia(ckQuinta, 5);
        verificaDia(ckSexta, 6);
        
        estagio.setBolsa(bolsa);
        estagio.setApolice(apolice);
        estagio.setSeguradora(seguradora);
    }
    
    private void verificaDia(String dia, int valor) {
        if (dia != null)
            estagio.setDiaSemana(valor);
    }
    
    
    private void redirecionar(HttpServletRequest request, HttpServletResponse response) {
     
        HttpSession session = request.getSession();
        session.setAttribute("EMPRESA", empresa);
        session.setAttribute("ESTAGIARIO", estagiario);
        session.setAttribute("ESTAGIO", estagio);
        session.setAttribute("REPRESENTANTE", representante);
        session.setAttribute("SUPERVISOR", supervisor);
        
        RequestDispatcher rd = request.getRequestDispatcher
            (destino);
        
        try {
            rd.forward(request, response);
        } catch (Exception e) {
            this.e = e.getMessage();
        }
        
    }
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        recebeDados(request);
        redirecionar(request, response);
        
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServReqObrigatorio</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServReqObrigatorio at " + estagiario.getNome() + "</h1>");
            out.println("<h3>Nascimento: "+estagiario.getNascimento());
            out.println("<p>"+this.e+"</p>");
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
