<%-- 
    Document   : formPlanoObrigatorio
    Created on : 27 de set. de 2021, 21:22:42
    Author     : renan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <nav class="navbar navbar-light navbar-expand-md navigation-clean">
            <div class="container">
                <a class="navbar-brand" href="index.html">INÍCIO</a>
                <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown">
                            <a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#">Requerimentos&nbsp;</a>
                            <div class="dropdown-menu"><a class="dropdown-item" href="formReqObrigatorio.html">Estágio Obrigatório</a>
                                <a class="dropdown-item" href="#">Estágio Não-Obrigatório</a>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="#">Documentação Final</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <h3 style="background: #d1d1d1; font-weight: bold; text-align: left; font-size: 20px;">Plano de Estágio Obrigatório</h3>
            
            <%
                
                String erro = "";
                erro = (String) request.getAttribute("ERRO");
                String semestre = "1";
                
                if (erro != null) {
                    semestre = (String) request.getAttribute("SEMESTRE");
                        
            %>
            <div class="alert alert-danger" role="alert">
                     Campos obrigatórios devem ser preenchidos.
                     <br>
                     <%=erro%>
            </div>
            <%  } %>
            
            <form action="ServPlanoObrigatorio" method="POST">
                <div>
                    <label for="txtSemestre" style="margin-top: 16px; margin-bottom: 2px;">Semestre Letivo</label>
                    <select class="form-control" name="txtSemestre">
                        <%
                            for (int i = 1; i < 11; i++) {
                                if (Integer.parseInt(semestre) == i) { %>
                                    <option value="<%=i%>" selected=""><%=i%>º Semestre</option>
                                <% } else { %>
                                <option value="<%=i%>" ><%=i%>º Semestre</option>
                        %>
                                
                        <%        
                                }
                            }
                        %>
                      
                    </select>
                    <label style="margin-top: 16px; margin-bottom: 2px;">Atividades a serem desenvolvidas (detalhar):</label>
                    <textarea class="form-control" name="txtAtividades" rows="10" placeholder="Informe detalhadamente as atividades que serão executadas, fazendo referência aos conteúdos relacionados com a sua área de formação"></textarea>
                    <button class="btn btn-primary" type="submit" style="margin-top: 12px;">Avançar &gt;&gt;</button>
                </div>
            </form>
        </div>
        <footer>
            <div class="container" style="padding-top: 15px;">
                <img class="img-fluid" src="assets/img/unisagrado-logo.jpg" style="transform: scale(0.47);" />
            </div>
        </footer>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>