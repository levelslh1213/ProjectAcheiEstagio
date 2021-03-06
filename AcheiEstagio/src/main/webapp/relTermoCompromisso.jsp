<%-- 
    Document   : relTermoCompromisso
    Created on : 8 de nov. de 2021, 18:35:35
    Author     : paulo
--%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
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
       java.util.Date data = new Date();
       String dataAtual = java.text.DateFormat.getDateInstance(DateFormat.MEDIUM).format(data);
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
                <h5 style="text-align: left;font-size: 16PX;padding-top: 50PX;font-weight: bold;">TERMO DE COMPROMISSO DE EST??GIO OBRIGAT??RIO</h5>
            </div>
        </div>
        <div class="row" style="margin-top: 16PX;">
            <div class="col" style="margin-top: 0;">
                <p style="font-size: 8PX;"><br>Pelo presente instrumento particular e na melhor forma de direito, as partes a seguir nomeadas:<br></p>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <p style="font-size: 8PX;"><strong>Institui????o de Ensino: IASCJ - CENTRO UNIVERSIT??RIO SAGRADO CORA????O ??? UNISAGRADO</strong>, associa????o civil de assist??ncia social, cultural e educacional, declarada de utilidade p??blica e de fins n??o lucrativos,<br>inscrita no CNPJ: 61.015.087/0008-31, com sede na Rua Irm?? Arminda, 10-50, Jd. Brasil, Bauru/SP, CEP: 17011-160, fone: (14) 2107-7000, site: <a href="http://www.unisagrado.edu.br">www.unisagrado.edu.br</a>, neste ato representado por Flavia Dias Gomes, assistente administrativo.<br></p>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <p style="font-size: 8px;font-weight: bold;">Concedente do Est??gio:</p>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr></tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="font-size: 8px;font-weight: bold;">Raz??o Social:</td>
                                <td style="font-size: 8px;"><%=empresa.getRazaoSocial()%></td>
                            </tr>
                            <tr style="font-size: 8px;">
                                <td style="font-size: 8px;font-weight: bold;">Endere??o:</td>
                                <td style="font-size: 8px;"><%=empresa.getEndereco().getRua()%></td>
                                <td><strong>Bairro:</strong></td>
                                <td>bairro</td>
                            </tr>
                            <tr style="font-size: 8px;">
                                <td style="font-size: 8px;font-weight: bold;">CEP:</td>
                                <td style="font-size: 8px;"><%=empresa.getEndereco().getCep()%></td>
                                <td><strong>Fone:</strong></td>
                                <td>fone</td>
                            </tr>
                            <tr style="font-size: 8px;">
                                <td style="font-size: 8px;font-weight: bold;">CNPJ:</td>
                                <td style="font-size: 8px;"><%=empresa.getCnpj()%></td>
                                <td><strong>Cidade/UF:</strong></td>
                                <td>cid</td>
                            </tr>
                            <tr style="font-size: 8px;">
                                <td style="font-size: 8px;font-weight: bold;">Representada por:</td>
                                <td style="font-size: 8px;"><%=representante.getNome()%></td>
                                <td><strong>Cargo:</strong></td>
                                <td>carg</td>
                            </tr>
                            <tr style="font-size: 8px;">
                                <td style="font-size: 8px;font-weight: bold;">Respons??vel pelo estagi??rio na empresa (Supervisor Local):</td>
                                <td style="font-size: 8px;"><%=supervisor.getNome()%></td>
                                <td><strong>Cargo:</strong></td>
                                <td>cargo</td>
                            </tr>
                            <tr>
                                <td style="font-size: 8px;font-weight: bold;">E-mail:</td>
                                <td style="font-size: 8px;"><%=supervisor.getEmail()%></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 16px;">
            <div class="col">
                <p style="font-size: 8px;font-weight: bold;">Estagi??rio(a):</p>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr></tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="font-size: 8px;font-weight: bold;">Nome:</td>
                                <td style="font-size: 8px;"><%=estagiario.getNome()%></td>
                            </tr>
                            <tr style="font-size: 8px;">
                                <td style="font-size: 8px;font-weight: bold;">Endere??o:</td>
                                <td style="font-size: 8px;"><%=estagiario.getEndereco().getRua()%></td>
                                <td><strong>Cidade/UF:</strong></td>
                                <td>cidade</td>
                            </tr>
                            <tr style="font-size: 8px;">
                                <td style="font-size: 8px;font-weight: bold;">Fone:</td>
                                <td style="font-size: 8px;"><%=estagiario.getTelefone()%></td>
                            </tr>
                            <tr style="font-size: 8px;">
                                <td style="font-size: 8px;font-weight: bold;">Curso:</td>
                                <td style="font-size: 8px;"><%=estagiario.getCurso()%></td>
                            </tr>
                            <tr style="font-size: 8px;">
                                <td style="font-size: 8px;font-weight: bold;">Est??gio:</td>
                                <td style="font-size: 8px;"><%=estagiario.getDisciplina()%></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <p style="margin-top: 16px;font-size: 8px;">Celebram entre si este TERMO DE COMPROMISSO DE EST??GIO OBRIGAT??RIO, convencionando as cl??usulas e condi????es seguintes:<br><br><strong>CL??USULA 1??</strong> ??? Este instrumento tem por objetivo formalizar as condi????es b??sicas para a realiza????o de est??gio de estudante, com interveni??ncia e assinatura da INSTITUI????O DE ENSINO e particularizar a rela????o jur??dica especial existente entre o(a) ESTUDANTE e a CONCEDENTE, caracterizando a n??o vincula????o empregat??cia, nos termos da legisla????o vigente.<br><br><strong>CL??USULA 2??&nbsp;</strong>??? O referido <strong>est??gio obrigat??rio</strong> ?? de interesse curricular e pedagogicamente ??til, entendido o est??gio como uma atividade de aprendizagem social, profissional e cultural, compat??veis com o contexto b??sico da profiss??o, ao qual seu curso se refere e integra o Processo de Ensino Aprendizagem, nos termos da Lei 11.788/08 e da Lei n??. 9.394/96 (Diretrizes e<br>Bases da Educa????o Nacional) e sua regulamenta????o.<br><br><strong>CL??USULA 3??&nbsp;</strong>??? Ficam compromissadas entre as partes as seguintes condi????es para a realiza????o do Est??gio:<br>a) As atividades de est??gio a serem cumpridas pelo(a) estagi??rio(a) ser??o desenvolvidas pelo per??odo de: _______ at?? ________ ,&nbsp; podendo ser prorrogada dentro do semestre,&nbsp; nos termos da Cl??usula 10?? do presente termo.<br>b) Dias da semana: __________ . Hor??rio: ___________ , totalizando ______ semanais, de forma compat??vel com o hor??rio escolar do(a) estagi??rio(a).<br>c) Fica sob o encargo da INSTITUI????O DE ENSINO, nos termos do art. 9??., IV e par??grafo ??nico da Lei 11.788/08, a efetiva????o de contrato de seguro para acidentes pessoais ao(a) estagi??rio(a), conforme Ap??lice de Seguro n??: 2000683- Seguradora/Corretora: Delcossa Acidentes Pessoais.<br>d) Atividades do est??gio: em anexo.<br><br><strong>CL??USULA 4??</strong> ??? Durante a realiza????o do presente <strong>est??gio obrigat??rio</strong> n??o haver?? qualquer tipo de contrapresta????o pecuni??ria<br>concedida pela UNIDADE CONCEDENTE ao supracitado ESTAGI??RIO(A), nos moldes do art. 12 da Lei 11.788/08.<br><br><strong>CL??USULA 5??&nbsp;</strong>??? Na vig??ncia do presente Termo, o(a) ESTAGI??RIO(A) est?? inclu??do(a) na cobertura do Seguro contra Acidentes Pessoais, nos termos da al??nea ???c??? da Cl??usula 3?? do presente pacto.<br><br><strong>CL??USULA 6??&nbsp;</strong>??? Cabe ?? INSTITUI????O DE ENSINO, nos termos do artigo 7?? da Lei 11.788/08:<br>a) Avaliar as instala????es da parte concedente do est??gio e sua adequa????o ?? forma????o cultural e profissional do educando;<br>b)&nbsp;Indicar professor(a) orientador(a), da ??rea a ser desenvolvida no est??gio, como respons??vel pelo acompanhamento e avalia????o das atividades do(a) ESTAGI??RIO(A);<br>c) Acompanhar, orientar e avaliar o est??gio, visando ?? complementa????o do ensino e da aprendizagem;<br>d)&nbsp;Elaborar normas complementares e instrumentos de avalia????o dos est??gios de seus educandos;<br>e)&nbsp;Exigir do educando a apresenta????o peri??dica, em prazo n??o superior a seis (06) meses, de relat??rio das atividades;<br><br><strong>CL??USULA 7??&nbsp;</strong>??? Cabe ?? CONCEDENTE:<br>a) Proporcionar ao(a) ESTAGI??RIO(A) atividades de aprendizagem social, profissional e cultural, compat??vel com o Curso;<br>b)&nbsp;Proporcionar ?? institui????o de ensino, sempre que solicitado, subs??dios que possibilitem o acompanhamento, a supervis??o e avalia????o do est??gio;<br>c) Enviar relat??rio de atividades ?? institui????o de ensino com vista obrigat??ria ao(a) ESTAGI??RIO(A), com periodicidade m??nima de 6 (seis) meses, bem como na conclus??o do est??gio, ou, se for o caso, na rescis??o antecipada do presente Termo de Compromisso de Est??gio;<br>d) Indicar funcion??rio de seu quadro de pessoal, com forma????o ou experi??ncia profissional na ??rea de conhecimento desenvolvida no curso do estagi??rio, para orientar e supervisionar o estudante;<br>e) Solicitar ao(a) ESTAGI??RIO(A), a qualquer tempo, documentos comprobat??rios da regularidade da situa????o escolar, uma vez que o abandono, a desist??ncia, a transfer??ncia do curso ou o trancamento da matr??cula constituem motivos de imediata rescis??o.<br><br><strong>CL??USULA 8??</strong> ??? Cabe ao(a) ESTAGI??RIO(A):<br>a) Cumprir, com todo empenho e interesse, toda programa????o estabelecida para seu est??gio;<br>b) Observar e obedecer ??s normas internas da CONCEDENTE;<br>c)&nbsp;Apresentar documentos comprobat??rios da regularidade da sua situa????o escolar, sempre que solicitado pelas partes;<br>d)&nbsp;Manter rigorosamente atualizado seus dados cadastrais e escolares, junto ?? INSTITUI????O DE ENSINO e CONCEDENTE;<br>e)&nbsp;Informar de imediato, qualquer altera????o na sua situa????o escolar, tais como o abandono, a desist??ncia, a transfer??ncia do curso ou o trancamento da matr??cula ?? CONCEDENTE do est??gio;<br>f) Encaminhar, obrigatoriamente, ?? INSTITUI????O DE ENSINO e ?? CONCEDENTE, uma via do presente instrumento, devidamente assinado pelas partes;<br>g) Preencher, obrigatoriamente, o Relat??rio de Acompanhamento do Est??gio, referente ??s suas atividades, entregando-o ?? CONCEDENTE e ?? INSTITUI????O DE ENSINO at?? o prazo final para a inser????o das notas no Di??rio de Classe Online<br>h) Se compromete o(a) aluno(a)-estagi??rio(a) a comparecer no respectivo local de est??gio sob suas pr??prias expensas;<br>i) Responder civil e/ou criminalmente pelos danos por ele(a) causado nas depend??ncias da CONCEDENTE.<br><br><strong>CL??USULA 9??</strong> ??? Os Supervisores da INSTITUI????O DE ENSINO e da CONCEDENTE possuem a atribui????o de organizar, supervisionar, acompanhar, aprovar e viabilizar a realiza????o do objeto do presente conv??nio, de forma que, em campo, os est??gios e o aprimoramento do(a) aluno(a) alcancem o melhor desempenho poss??vel.<br><br><strong>CL??USULA 10??</strong> O presente instrumento ter?? dura????o de, no m??ximo, um (01) semestre letivo, n??o podendo ser prorrogado pela natureza do est??gio.<br><strong>Par??grafo Primeiro - </strong>O estudante poder?? cumprir jornada de, no m??ximo, seis (06) horas di??rias e trinta (30) semanais.<br><strong>Par??grafo Segundo</strong> ??? O n??o cumprimento de quaisquer cl??usulas presentes no TERMO DE COMPROMISSO DE EST??GIO constitui motivos de imediata rescis??o.<br><br><strong>CL??USULA 11??</strong> ??? Havendo necessidade de rescis??o contratual por qualquer das partes, dever?? o(a) interessado(a) comunicar a inten????o de faz??-lo previamente, por escrito, com pelo menos 10 (dez) dias de anteced??ncia.<br><br><strong>CL??USULA 12??&nbsp;</strong>??? Os benefici??rios de tal pacto n??o possuir??o qualquer privil??gio al??m dos previstos para os demais estudantes da INSTITUI????O DE ENSINO.<br><br><strong>CL??USULA 13??&nbsp;</strong>??? N??o ser?? concedido gratuidade ou desconto por parte da INSTITUI????O DE ENSINO em taxas acad??micas e de<br>biblioteca.<br><br><strong>CL??USULA 14??&nbsp;</strong>??? S?? poder??o participar do presente termo de compromisso de est??gio o(a) estudante que esteja em situa????o regular perante ?? INSTITUI????O DE ENSINO.<br><br><strong>CL??USULA 15??</strong> ??? A eventual toler??ncia da INSTITUI????O DE ENSINO n??o implicar?? nova????o, perd??o, ren??ncia, altera????o ou modifica????o do presente pacto, sendo o evento ou omiss??o considerados, para os fins de direito, como mera liberalidade da INSTITUI????O DE ENSINO, n??o implicando, na ren??ncia ou desist??ncia de exigir o cumprimento das disposi????es aqui contidas ou do direito de requerer a total execu????o de cada uma das obriga????es contidas neste contrato.<br><br><strong>CL??USULA 16??&nbsp;</strong>??? Fica eleito o Foro da Comarca de Bauru/SP, para dirimir qualquer quest??o resultante deste pacto.<br><br>E, por estarem de inteiro e comum acordo com as condi????es estabelecidas neste TERMO DE COMPROMISSO DE EST??GIO OBRIGAT??RIO, as partes o assinam em tr??s (03) vias de igual teor.<br></p>
            </div>
        </div>
        <div class="row">
            <div class="col"><label class="col-form-label" style="font-size: 8px;">Bauru, <%=dataAtual%>&nbsp;</label></div>
        </div>
        <div class="row" style="margin-top: 36px;">
            <div class="col">
                <div class="row" style="text-align: center;">
                    <div class="col" style="text-align: center;"><label class="col-form-label" style="font-size: 8PX;font-weight: bold;text-align: center;padding-bottom: 1PX;">IASCJ - CENTRO UNIVERSIT??RIO SAGRADO CORA????O - UNISAGRADO</label></div>
                </div>
                <div class="row" style="text-align: center;">
                    <div class="col"><label class="col-form-label" style="text-align: center;font-size: 8PX;padding-top: 1PX;">FL??VIA DIAS GOMES<br>ASSISTENTE ADMINISTRATIVO<br></label></div>
                </div>
            </div>
            <div class="col">
                <div class="row" style="text-align: center;">
                    <div class="col"><label class="col-form-label" style="font-size: 8PX;font-weight: bold;text-align: center;padding-bottom: 1PX;"><%=empresa.getRazaoSocial()%></label></div>
                </div>
                <div class="row" style="text-align: center;">
                    <div class="col"><label class="col-form-label" style="text-align: center;font-size: 8PX;padding-top: 1px;padding-bottom: 1px;"><%=representante.getNome()%><br></label></div>
                </div>
                <div class="row" style="text-align: center;">
                    <div class="col"><label class="col-form-label" style="text-align: center;font-size: 8PX;padding-top: 1PX;padding-bottom: 1px;"><%=representante.getCargo()%><br></label></div>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 48px;text-align: center;">
            <div class="col"><label class="col-form-label" style="font-size: 8px;"><strong><%=estagiario.getNome()%></strong></label></div>
            <div class="col"></div>
        </div>
        <div class="row" style="margin-top: 36px;">
            <div class="col">
                <div class="row" style="text-align: center;">
                    <div class="col" style="text-align: center;"><label class="col-form-label" style="font-size: 8PX;font-weight: bold;text-align: center;padding-bottom: 1PX;">______________________________</label></div>
                </div>
                <div class="row" style="text-align: center;">
                    <div class="col"><label class="col-form-label" style="text-align: center;font-size: 8PX;padding-top: 1PX;">1?? Testemunha<br><br>CPF/MF: ________________________<br></label></div>
                </div>
            </div>
            <div class="col">
                <div class="row" style="text-align: center;">
                    <div class="col" style="text-align: center;"><label class="col-form-label" style="font-size: 8PX;font-weight: bold;text-align: center;padding-bottom: 1PX;">______________________________</label></div>
                </div>
                <div class="row" style="text-align: center;">
                    <div class="col"><label class="col-form-label" style="text-align: center;font-size: 8PX;padding-top: 1PX;">2?? Testemunha<br><br>CPF/MF: ________________________<br></label></div>
                </div>
            </div>
        </div>
        <div class="row"></div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
