<%-- 
    Document   : relPlano
    Created on : 8 de nov. de 2021, 18:24:40
    Author     : paulo
--%>
<%@page import="Model.Supervisor"%>
<%@page import="Model.Representante"%>
<%@page import="Model.Estagio"%>
<%@page import="Model.Estagiario"%>
<%@page import="Model.Endereco"%>
<%@page import="Model.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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


<!DOCTYPE html>
<html lang="en">

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
    <div class="container">
        <div class="row" style="text-align: left;height: 100PX;">
            <div class="col" style="text-align: left;">
                <figure class="figure" style="text-align: left;padding-top: 16PX;"><img class="img-fluid figure-img" src="assets/img/unisagrado-logo.jpg" style="transform: scale(1);text-align: left;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;margin-right: 0px;margin-left: 0px;height: 75PX;"></figure>
            </div>
            <div class="col">
                <h5 style="text-align: left;font-size: 16PX;padding-top: 50PX;font-weight: bold;">PLANO DE ESTÁGIO OBRIGATÓRIO</h5>
            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-top: 16PX;"><label style="font-size: 12PX;font-weight: bold;">ESTAGIÁRIO(A):</label><label style="padding-right: 0;padding-left: 6px;font-size: 12PX;"><%= estagiario.getNome() %></label></div>
        </div>
        <div class="row">
            <div class="col" style="margin-top: 16PX;"><label style="font-size: 12PX;font-weight: bold;">CURSO:</label><label style="padding-right: 0;padding-left: 6px;font-size: 12PX;"><%= estagiario.getCurso() %></label></div>
        </div>
        <div class="row">
            <div class="col" style="margin-top: 16PX;"><label style="font-size: 12PX;font-weight: bold;">PROFESSOR(A) ORIENTADOR(A):</label><label style="padding-right: 0;padding-left: 6px;font-size: 12PX;"><%=estagiario.getProfessor() %></label></div>
        </div>
        <div class="row">
            <div class="col" style="margin-top: 16PX;"><label style="font-size: 12PX;font-weight: bold;">UNIDADE CONCEDENTE:</label><label style="padding-right: 0;padding-left: 6px;font-size: 12PX;"><%=empresa.getRazaoSocial()%></label></div>
        </div>
        <div class="row">
            <div class="col" style="margin-top: 16PX;"><label style="font-size: 12PX;font-weight: bold;">SUPERVISOR DE ESTÁGIO:</label><label style="padding-right: 0;padding-left: 6px;font-size: 12PX;"><%= supervisor.getNome() %></label></div>
        </div>
        <div class="row">
            <div class="col" style="margin-top: 16PX;"><label style="font-size: 12PX;font-weight: bold;">SEMESTRE LETIVO:</label><label style="padding-right: 0;padding-left: 6px;font-size: 12PX;"><%= estagiario.getSemestre() %></label></div>
        </div>
        <div class="row">
            <div class="col"><label class="col-form-label" style="font-size: 12PX;font-weight: bold;">ATIVIDADES A SEREM DESENVOLVIDAS</label></div>
        </div>
        <div class="row">
            <div class="col"><label class="col-form-label" style="font-size: 12PX;"><%= estagio.getAtividades() %></label></div>
        </div>
        <div class="row"></div>
        <div class="row">
            <div class="col"><label class="col-form-label" style="font-size: 12PX;font-weight: bold;margin-bottom: 36PX;">ASSINATURAS</label></div>
        </div>
        <div class="row">
            <div class="col"><label class="col-form-label" style="font-size: 12PX;">Professor Orientador</label></div>
            <div class="col"><label class="col-form-label" style="font-size: 12PX;">Estagiário</label></div>
            <div class="col"><label class="col-form-label" style="font-size: 12PX;">Representante</label></div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>