<%-- 
    Document   : formReqObrigatorio
    Created on : 13 de set. de 2021, 21:18:10
    Author     : renan
--%>

<%@page import="Utilitarios.Cursos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Estagio</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Features-Boxed.css">
    <link rel="stylesheet" href="assets/css/Navigation-Clean.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <%
      String titulo = "";
      String form = "";
      
      try{
        form = request.getParameter("form");
      }
      catch(Exception e){
      }
      if(form == null){
        titulo = "PROBLEMAS COM O FORMULÁRIO";
        RequestDispatcher rd = request.getRequestDispatcher("index.html");
        rd.forward(request, response);
      }
      
      if(form.equals("1")){
      titulo = "Requerimento de Estágio Obrigatório";
      }
      else if(form.equals("0")){
          titulo = "Requerimento de Estágio Não Obrigatório";
      }
      else {
          titulo = "PROBLEMAS COM O FORMULÁRIO";
          RequestDispatcher rd = request.getRequestDispatcher("index.html");
          rd.forward(request, response);
      }
    %>
    <nav class="navbar navbar-light navbar-expand-md navigation-clean">
        <div class="container">
            <a class="navbar-brand" href="index.html">INÍCIO</a>
            <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#">Requerimentos&nbsp;</a>
                        <div class="dropdown-menu"><a class="dropdown-item" href="formReqObrigatorio.html">Estágio Obrigatório</a>
                            <a class="dropdown-item" href="#">Estágio Não-Obrigatório</a>
                        </div>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="#">Documentação Final</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container" style="padding-top: 20px;">
        <h3 style="text-align: center;background: #d1d1d1;font-size: 22px;font-weight: bold;"><%out.println(titulo);%></h3>
    </div>
    <div class="container" style="padding-top: 20px;">
        
        <%
                String erro = "";
                erro = (String) request.getAttribute("ERRO");
                
                if (erro != null) {
                        
            %>
            <div class="alert alert-danger" role="alert">
                     <%=erro%>
            </div>
            <%  } %>
        
        <form action="ServReqObrigatorio" method="POST">
            <div>
                <div class="form-group">
                    <h5>DADOS PESSOAIS</h5>
                    <input class="form-control form-control-sm" type="text" name="txtID" placeholder="ID" required="" style="width: 150px;">
                    <input class="form-control form-control-sm" type="text" name="txtNome" placeholder="Nome Completo" style="margin-top: 8px;" required="">
                    <!-- comentario -->
                    <select name="comboCurso" class="form-control form-control-sm" style="margin-top: 8px;">
                        
                        <%
                            Cursos curso = new Cursos(); //objeto
                            String valor="";
                            for (int i = 0; i < curso.cursos.size(); i++) {
                                    valor = curso.cursos.get(i);
                        %>
                        <option value="<%= valor%>"><%= valor%></option>
                        <% } %>
                        
                    </select>
                    
                    <input class="form-control form-control-sm" type="text" name="txtCPF" placeholder="CPF" style="margin-top: 8px;width: 200px;" required="">
                    <label style="margin-top: 8px;margin-bottom: 2px;">Data de Nascimento:</label>
                    <input class="form-control form-control-sm" type="date" name="txtNascimento" style="margin-top: 0px;width: 300px;" required="">
                    <input class="form-control form-control-sm" type="text" name="txtEndereco" placeholder="Endereço" style="margin-top: 8px;" required="">
                    <input class="form-control form-control-sm" type="text" name="txtBairro" placeholder="Bairro" style="margin-top: 8px;width: 300px;" required="">
                    <input class="form-control form-control-sm" type="text" name="txtCidade" placeholder="Cidade" style="margin-top: 8px;width: 300px;" required="">
                    <input class="form-control form-control-sm" type="text" name="txtCep" placeholder="CEP" style="margin-top: 8px;width: 300px;" required="">
                    <input class="form-control form-control-sm" type="tel" name="txtTelefone" placeholder="Telefone" style="margin-top: 8px;width: 300px;" required="">
                    
                    <label for="txtProfessor" style="margin-top: 20px;margin-bottom: 2px;">Professor Orientador</label>
                    <label for="txtProfessor"></label>
                    <input class="form-control form-control-sm" type="text" name="txtProfessor" placeholder="Professor" style="width: 300px;" required="">
                    
                    
                    <%
                        if(form.equals("1")){
                        
                    %>
                    <label for="txtProfessor" style="margin-top: 8px;margin-bottom: 2px;">Disciplina</label>
                    <select name="comboDisciplina" class="form-control form-control-sm">
                        
                        <%
                            for (int i = 0; i < curso.disciplinas.size(); i++) {
                                    valor = curso.disciplinas.get(i);
                        %>
                        <option value="<%= valor%>"><%= valor%></option>
                        <% } %>
                        
                    </select>
                    <%
                        }
                    %>
                </div>
                <div class="form-group" style="padding-top: 12px;">
                    <h5>UNIDADE CONCEDENTE (EMPRESA)</h5>
                        <input class="form-control form-control-sm" type="text" name="txtRazao" placeholder="Razão Social" style="margin-top: 8px;" required="">
                        <input class="form-control form-control-sm" type="text" name="txtEnderecoUC" placeholder="Endereço" style="margin-top: 8px;" required="">
                        <input class="form-control form-control-sm" type="text" name="txtBairroUC" placeholder="Bairro" style="margin-top: 8px;width: 300px;" required="">
                        <input class="form-control form-control-sm" type="text" name="txtCidadeUC" placeholder=
                               
                               <%if(form.equals("0")) {
                               %>
                               "Cidade/Estado"
                               <%}else {%>
                               "Cidade"
                               <%}%>
                               style="margin-top: 8px;width: 300px;" required="">
                        <input class="form-control form-control-sm" type="text" name="txtCepUC" placeholder="CEP" style="margin-top: 8px;width: 300px;" required="">
                        <input class="form-control form-control-sm" type="tel" name="txtTelefoneUC" placeholder="Telefone" style="margin-top: 8px;width: 300px;" required="" inputmode="tel">
                        <input class="form-control form-control-sm" type="text" name="txtCNPJ" placeholder="CNPJ" style="width: 300px;margin-top: 8px;">
                        
                        <label style="margin-top: 12px;margin-bottom: 2px;">Representante Legal</label>
                        <input class="form-control form-control-sm" type="text" name="txtRepresentante" placeholder="Pessoa autorizada para assinatura do TCE" required="">
                        <input class="form-control form-control-sm" type="text" name="txtCargoRepresentante" placeholder="Cargo" style="margin-top: 8px;" required="">
                        <input class="form-control form-control-sm" type="text" name="txtRG" placeholder="RG" style="margin-top: 8px;width: 300px;" required="">
                        <input class="form-control form-control-sm" type="text" name="txtCPFRepresentante" placeholder="CPF" style="margin-top: 8px;width: 300px;" required="">
                        
                        <label style="margin-top: 16px;">Nome do Supervisor</label>
                             <p style="font-size: 10px;font-style: italic;color: var(--gray);margin-bottom: 6px;">Funcionário do quadro pessoal com formação e/ou experiência profissional na área de conhecimento desenvolvida no curso do estagiário, que supervisionará as atividades de estágio</p>
                            <input class="form-control form-control-sm" type="text" name="txtSupervisor" placeholder="Supervisor">
                            <input class="form-control form-control-sm" type="text" name="txtCargoSupervisor" placeholder="Cargo / Função" style="margin-top: 8px;">
                            <input class="form-control form-control-sm" type="email" name="txtEmail" placeholder="e-mail" style="margin-top: 8px;" inputmode="email">
                </div>
                <div class="form-group" style="padding-top: 12px;">
                    <h5>SOBRE O ESTÁGIO</h5>
                    
                    <label for="txtDtInicio" style="margin-bottom: 2px;">Início</label>                    
                    <input class="form-control form-control-sm" type="date" name="txtDtInicio">
                    <label for="txtDtFim" style="margin-top: 8px;margin-bottom: 2px;">Fim</label>
                    <input class="form-control form-control-sm" type="date" name="txtDtFim">
                    <label style="margin-top: 12px;margin-bottom: 2px;">Dias da Semana</label>
                    
                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-1" name="ckSegunda" value="2"><label class="form-check-label" for="ckSegunda">Segunda-Feira</label></div>
                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-3" name="ckTerca" value="3"><label class="form-check-label" for="ckTerca">Terça-Feira</label></div>
                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-2" name="ckQuarta" value="4"><label class="form-check-label" for="ckQuarta">Quarta-Feira</label></div>
                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-5" name="ckQuinta" value="5"><label class="form-check-label" for="ckQuinta">Quinta-Feira</label></div>
                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-4" name="ckSexta" value="6"><label class="form-check-label" for="ckSexta">Sexta-Feira</label></div>
                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-2" name="ckSabado" value="0"><label class="form-check-label" for="ckSabado">Sábado</label></div>
                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-7" name="ckDomingo" value="1"><label class="form-check-label" for="ckDomingo">Domingo</label></div>
                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-6" name="ckVariados" value="9"><label class="form-check-label" for="ckVariados">Dias Variados</label></div>
                    <label style="margin-top: 12px;margin-bottom: 2px;">Hora de Entrada</label>
                    <input class="form-control form-control-sm" type="time" name="txtHoraEntrada">
                    <label style="margin-top: 8px;margin-bottom: 2px;">Hora de Saída</label>
                    <input class="form-control form-control-sm" type="time" name="txtHoraSaída">
                    <div class="form-check" style="margin-top: 8px;">
                        <input class="form-check-input" type="checkbox" id="formCheck-8" name="ckHoraVariada" value="10">
                        <label class="form-check-label" for="ckHoraVariada">Horários Variados</label>
                    </div>
                    <input class="form-control form-control-sm" type="number" name="txtHoraSemanal" placeholder="Carga Horária Semanal" style="margin-top: 8px;width: 250px;" required="" max="30" min="1">
                    <%
                        if (form.equals("0")){
                    %>
                    <input class="form-control form-control-sm" type="text" name="txtBolsa" placeholder="Bolsa Auxilio (R$)" style="margin-top: 8px;width: 300px;" required="">
                    <input class="form-control form-control-sm" type="text" name="txtApolice" placeholder="Apólice de Seguro nº" style="margin-top: 8px;width: 300px;" required="">
                    <input class="form-control form-control-sm" type="text" name="txtSeguradora" placeholder="Seguradora/Corretora" style="margin-top: 8px;width: 300px;" required="">
                    <%}%>
                    <button class="btn btn-primary" type="submit" style="margin-top: 16px;">Avançar &gt;&gt;</button>
                </div>
            </div>
        </form>
    </div>
    <footer>
        <div class="container" style="padding-top: 15px;"><img class="img-fluid" src="assets/img/unisagrado-logo.jpg" style="transform: scale(0.47);"></div>
    </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>