<%-- 
    Document   : relRequerimento
    Created on : 18 de out. de 2021, 19:52:57
    Author     : renan
--%>

<%@page import="Model.Supervisor"%>
<%@page import="Model.Representante"%>
<%@page import="Model.Estagio"%>
<%@page import="Model.Estagiario"%>
<%@page import="Model.Endereco"%>
<%@page import="Model.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
       Empresa empresa;
       Estagiario estagiario;
       Estagio estagio;
       Representante representante;
       Supervisor supervisor;

       HttpSession sessao = request.getSession();
       estagiario = (Estagiario) sessao.getAttribute("ESTAGIARIO");
       empresa = (Empresa) sessao.getAttribute("EMPRESA");
       representante = (Representante) sessao.getAttribute("REPRESENTANTE");
       supervisor = (Supervisor) sessao.getAttribute("SUPERVISOR");
       estagio = (Estagio) sessao.getAttribute("ESTAGIO");
       
       boolean obrigatorio=true;
       if(estagio.getBolsa() !=0){
           obrigatorio = false;
       }
%>


<html lang="pt-br">
   <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
      <title>Estagio</title>
      <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
      <link rel="stylesheet" href="assets/fonts/font-awesome.min.css" />
      <link rel="stylesheet" href="assets/css/Features-Boxed.css" />
      <link rel="stylesheet" href="assets/css/Navigation-Clean.css" />
      <link rel="stylesheet" href="assets/css/styles.css" />
   </head>
   <body>
      <div class="container" style="text-align: left;">
         <div class="row" style="text-align: left; height: 100px;">
            <div class="col" style="text-align: left;">
               <figure class="figure" style="text-align: left; padding-top: 16px;">
                  <img
                     class="img-fluid figure-img"
                     src="assets/img/unisagrado-logo.jpg"
                     style="transform: scale(1); text-align: left; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-right: 0px; margin-left: 0px; height: 75px;"
                     />
               </figure>
            </div>
            <div class="col">
               <h5 style="text-align: left; font-size: 16px; padding-top: 50px; font-weight: bold;">REQUERIMENTO DE ESTÁGIO</h5>
            </div>
         </div>
         <div class="row">
            <div class="col" style="margin-top: 16px;">
                <label style="font-size: 8px; font-weight: bold;">NOME:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=estagiario.getNome() %></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">ENDEREÇO:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=estagiario.getEndereco().getRua() %></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">BAIRRO:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=estagiario.getEndereco().getBairro() %></label></div>
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">CIDADE:</label>
                <label style="font-size: 8px; padding: 0px; padding-left: 6px;"><%=estagiario.getEndereco().getCidade() %></label></div>
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">CEP:</label>
                <label style="font-size: 8px; padding: 0px; padding-left: 6px;"><%=estagiario.getEndereco().getCep() %></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">TELEFONE:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=estagiario.getTelefone() %></label></div>
         </div>
         <div class="row">
            <div class="col"><label style="font-size: 8px; font-weight: bold;">CURSO:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%= estagiario.getCurso() %></label></div>
            <div class="col"><label style="font-size: 8px; font-weight: bold;">ID:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=estagiario.getID()%></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">CPF:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=estagiario.getCpf() %></label></div>
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">DATA DE NASCIMENTO:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=estagiario.getNascimento() %></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">PROFESSOR ORIENTADOR DO ESTÁGIO (UNISAGRADO):</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%= estagiario.getProfessor() %></label></div>
         </div>
         <%if(obrigatorio){%>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">NOME DA DISCIPLINA:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=estagiario.getDisciplina() %></label></div>
         </div>
         <%}%>
         <div class="row" style="height: 24px;"></div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">RAZÃO SOCIAL DA UNIDADE CONCEDENTE:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%= empresa.getRazaoSocial()%></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">ENDEREÇO:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%= empresa.getEndereco().getRua() %></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">BAIRRO:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%= empresa.getEndereco().getBairro() %></label></div>
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">CIDADE:</label>
                <label style="font-size: 8px; padding: 0px; padding-left: 6px;"><%=empresa.getEndereco().getCidade() %></label></div>
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">CEP:</label>
                <label style="font-size: 8px; padding: 0px; padding-left: 6px;"><%= empresa.getEndereco().getCep() %></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">TELEFONE:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=empresa.getTelefone() %></label></div>
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">CNPJ:</label>
                <label style="font-size: 8px; padding-left: 6px;"><%=empresa.getCnpj() %></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">NOME DO REPRESENTANTE LEGAL:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%= representante.getNome() %></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">CARGO / FUNÇÃO:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%= representante.getCargo() %></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">RG:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%= representante.getRg() %></label></div>
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">CPF:</label>
                <label style="font-size: 8px; padding-left: 6px;"><%= representante.getCpf() %></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">NOME DO SUPERVISOR DA UNIDADE CONCEDENTE:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%= supervisor.getNome() %></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">CARGO / FUNÇÃO:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=supervisor.getFuncao()%></label></div>
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">E-MAIL:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=supervisor.getEmail() %></label></div>
         </div>
         <div class="row" style="height: 24px;"></div>
         <div class="row">
            <div class="col">
                <label style="font-size: 8px; font-weight: bold;">PERÍODO DO ESTÁGIO: DE</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;">
                
                    <%
                        out.println(estagio.getDtInicio() + " até " + estagio.getDtFim());
                    %>
                    
                </label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="margin-top: 12px; margin-bottom: 2px; font-size: 8px; font-weight: bold;">DIAS DA SEMANA:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;">
                
                    <%
                        
                        String[] diasSemana = {
                           "Sabado", "Domingo", "Segunda-Feira", "Terça-Feira", 
                            "Quarta-Feira", "Quinta-Feira", "Sexta-Feira" };
                        
                        if (estagio.isDiasVariados()) {
                            out.println("Dias Variados");
                        } else {
                            
                            for (int i = 0; i < estagio.getDiasSemana().length; i++) {
                                    if (estagio.getDiasSemana()[i])
                                        out.print(diasSemana[i] + " | ");
                                }
                            
                        }

                    %>
                
                </label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="margin-top: 12px; margin-bottom: 2px; font-size: 8px; font-weight: bold;">HORÁRIO:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;">
                
                     <%
                        if (estagio.isHoraVariada()) {
                            out.println("Horário Variado");
                        } else {
                            out.println(estagio.getHrEntrada() + " até " + estagio.getHrSaida());
                        }

                    %>
                
                </label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="margin-top: 12px; margin-bottom: 2px; font-size: 8px; font-weight: bold;">CARGA HORÁRIA SEMANAL:</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=estagio.getCargaSemanal()%></label></div>
         </div>
         <%if(!obrigatorio){%>
         <div class="row">
            <div class="col">
                <label style="margin-top: 12px; margin-bottom: 2px; font-size: 8px; font-weight: bold;">BOLSA AUXÍLIO: R$</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=estagio.getBolsa()%></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="margin-top: 12px; margin-bottom: 2px; font-size: 8px; font-weight: bold;">APÓLICE nº</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=estagio.getApolice()%></label></div>
         </div>
         <div class="row">
            <div class="col">
                <label style="margin-top: 12px; margin-bottom: 2px; font-size: 8px; font-weight: bold;">SEGURADORA</label>
                <label style="padding-right: 0; padding-left: 6px; font-size: 8px;"><%=estagio.getSeguradora()%></label></div>
         </div>
         <%}%>
         <br>
         <button class="btn btn-primary" type="button" style="margin-top: 16px;" onClick="window.print()">Imprimir</button>
         <br><br>
         <a href="opcoesImprimir.html"> << Voltar </a>
      </div>
      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/bootstrap/js/bootstrap.min.js"></script>
   </body>
</html>
