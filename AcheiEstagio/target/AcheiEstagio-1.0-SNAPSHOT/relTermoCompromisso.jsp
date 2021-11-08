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
                <h5 style="text-align: left;font-size: 16PX;padding-top: 50PX;font-weight: bold;">TERMO DE COMPROMISSO DE ESTÁGIO OBRIGATÓRIO</h5>
            </div>
        </div>
        <div class="row" style="margin-top: 16PX;">
            <div class="col" style="margin-top: 0;">
                <p style="font-size: 8PX;"><br>Pelo presente instrumento particular e na melhor forma de direito, as partes a seguir nomeadas:<br></p>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <p style="font-size: 8PX;"><strong>Instituição de Ensino: IASCJ - CENTRO UNIVERSITÁRIO SAGRADO CORAÇÃO – UNISAGRADO</strong>, associação civil de assistência social, cultural e educacional, declarada de utilidade pública e de fins não lucrativos,<br>inscrita no CNPJ: 61.015.087/0008-31, com sede na Rua Irmã Arminda, 10-50, Jd. Brasil, Bauru/SP, CEP: 17011-160, fone: (14) 2107-7000, site: <a href="http://www.unisagrado.edu.br">www.unisagrado.edu.br</a>, neste ato representado por Flavia Dias Gomes, assistente administrativo.<br></p>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <p style="font-size: 8px;font-weight: bold;">Concedente do Estágio:</p>
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
                                <td style="font-size: 8px;font-weight: bold;">Razão Social:</td>
                                <td style="font-size: 8px;"><%=empresa.getRazaoSocial()%></td>
                            </tr>
                            <tr style="font-size: 8px;">
                                <td style="font-size: 8px;font-weight: bold;">Endereço:</td>
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
                                <td style="font-size: 8px;font-weight: bold;">Responsável pelo estagiário na empresa (Supervisor Local):</td>
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
                <p style="font-size: 8px;font-weight: bold;">Estagiário(a):</p>
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
                                <td style="font-size: 8px;font-weight: bold;">Endereço:</td>
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
                                <td style="font-size: 8px;font-weight: bold;">Estágio:</td>
                                <td style="font-size: 8px;"><%=estagiario.getDisciplina()%></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <p style="margin-top: 16px;font-size: 8px;">Celebram entre si este TERMO DE COMPROMISSO DE ESTÁGIO OBRIGATÓRIO, convencionando as cláusulas e condições seguintes:<br><br><strong>CLÁUSULA 1ª</strong> – Este instrumento tem por objetivo formalizar as condições básicas para a realização de estágio de estudante, com interveniência e assinatura da INSTITUIÇÃO DE ENSINO e particularizar a relação jurídica especial existente entre o(a) ESTUDANTE e a CONCEDENTE, caracterizando a não vinculação empregatícia, nos termos da legislação vigente.<br><br><strong>CLÁUSULA 2ª&nbsp;</strong>– O referido <strong>estágio obrigatório</strong> é de interesse curricular e pedagogicamente útil, entendido o estágio como uma atividade de aprendizagem social, profissional e cultural, compatíveis com o contexto básico da profissão, ao qual seu curso se refere e integra o Processo de Ensino Aprendizagem, nos termos da Lei 11.788/08 e da Lei nº. 9.394/96 (Diretrizes e<br>Bases da Educação Nacional) e sua regulamentação.<br><br><strong>CLÁUSULA 3ª&nbsp;</strong>– Ficam compromissadas entre as partes as seguintes condições para a realização do Estágio:<br>a) As atividades de estágio a serem cumpridas pelo(a) estagiário(a) serão desenvolvidas pelo período de: _______ até ________ ,&nbsp; podendo ser prorrogada dentro do semestre,&nbsp; nos termos da Cláusula 10ª do presente termo.<br>b) Dias da semana: __________ . Horário: ___________ , totalizando ______ semanais, de forma compatível com o horário escolar do(a) estagiário(a).<br>c) Fica sob o encargo da INSTITUIÇÃO DE ENSINO, nos termos do art. 9º., IV e parágrafo único da Lei 11.788/08, a efetivação de contrato de seguro para acidentes pessoais ao(a) estagiário(a), conforme Apólice de Seguro nº: 2000683- Seguradora/Corretora: Delcossa Acidentes Pessoais.<br>d) Atividades do estágio: em anexo.<br><br><strong>CLÁUSULA 4ª</strong> – Durante a realização do presente <strong>estágio obrigatório</strong> não haverá qualquer tipo de contraprestação pecuniária<br>concedida pela UNIDADE CONCEDENTE ao supracitado ESTAGIÁRIO(A), nos moldes do art. 12 da Lei 11.788/08.<br><br><strong>CLÁUSULA 5ª&nbsp;</strong>– Na vigência do presente Termo, o(a) ESTAGIÁRIO(A) está incluído(a) na cobertura do Seguro contra Acidentes Pessoais, nos termos da alínea “c” da Cláusula 3ª do presente pacto.<br><br><strong>CLÁUSULA 6ª&nbsp;</strong>– Cabe à INSTITUIÇÃO DE ENSINO, nos termos do artigo 7º da Lei 11.788/08:<br>a) Avaliar as instalações da parte concedente do estágio e sua adequação à formação cultural e profissional do educando;<br>b)&nbsp;Indicar professor(a) orientador(a), da área a ser desenvolvida no estágio, como responsável pelo acompanhamento e avaliação das atividades do(a) ESTAGIÁRIO(A);<br>c) Acompanhar, orientar e avaliar o estágio, visando à complementação do ensino e da aprendizagem;<br>d)&nbsp;Elaborar normas complementares e instrumentos de avaliação dos estágios de seus educandos;<br>e)&nbsp;Exigir do educando a apresentação periódica, em prazo não superior a seis (06) meses, de relatório das atividades;<br><br><strong>CLÁUSULA 7ª&nbsp;</strong>– Cabe à CONCEDENTE:<br>a) Proporcionar ao(a) ESTAGIÁRIO(A) atividades de aprendizagem social, profissional e cultural, compatível com o Curso;<br>b)&nbsp;Proporcionar à instituição de ensino, sempre que solicitado, subsídios que possibilitem o acompanhamento, a supervisão e avaliação do estágio;<br>c) Enviar relatório de atividades à instituição de ensino com vista obrigatória ao(a) ESTAGIÁRIO(A), com periodicidade mínima de 6 (seis) meses, bem como na conclusão do estágio, ou, se for o caso, na rescisão antecipada do presente Termo de Compromisso de Estágio;<br>d) Indicar funcionário de seu quadro de pessoal, com formação ou experiência profissional na área de conhecimento desenvolvida no curso do estagiário, para orientar e supervisionar o estudante;<br>e) Solicitar ao(a) ESTAGIÁRIO(A), a qualquer tempo, documentos comprobatórios da regularidade da situação escolar, uma vez que o abandono, a desistência, a transferência do curso ou o trancamento da matrícula constituem motivos de imediata rescisão.<br><br><strong>CLÁUSULA 8ª</strong> – Cabe ao(a) ESTAGIÁRIO(A):<br>a) Cumprir, com todo empenho e interesse, toda programação estabelecida para seu estágio;<br>b) Observar e obedecer às normas internas da CONCEDENTE;<br>c)&nbsp;Apresentar documentos comprobatórios da regularidade da sua situação escolar, sempre que solicitado pelas partes;<br>d)&nbsp;Manter rigorosamente atualizado seus dados cadastrais e escolares, junto à INSTITUIÇÃO DE ENSINO e CONCEDENTE;<br>e)&nbsp;Informar de imediato, qualquer alteração na sua situação escolar, tais como o abandono, a desistência, a transferência do curso ou o trancamento da matrícula à CONCEDENTE do estágio;<br>f) Encaminhar, obrigatoriamente, à INSTITUIÇÃO DE ENSINO e à CONCEDENTE, uma via do presente instrumento, devidamente assinado pelas partes;<br>g) Preencher, obrigatoriamente, o Relatório de Acompanhamento do Estágio, referente às suas atividades, entregando-o à CONCEDENTE e à INSTITUIÇÃO DE ENSINO até o prazo final para a inserção das notas no Diário de Classe Online<br>h) Se compromete o(a) aluno(a)-estagiário(a) a comparecer no respectivo local de estágio sob suas próprias expensas;<br>i) Responder civil e/ou criminalmente pelos danos por ele(a) causado nas dependências da CONCEDENTE.<br><br><strong>CLÁUSULA 9ª</strong> – Os Supervisores da INSTITUIÇÃO DE ENSINO e da CONCEDENTE possuem a atribuição de organizar, supervisionar, acompanhar, aprovar e viabilizar a realização do objeto do presente convênio, de forma que, em campo, os estágios e o aprimoramento do(a) aluno(a) alcancem o melhor desempenho possível.<br><br><strong>CLÁUSULA 10ª</strong> O presente instrumento terá duração de, no máximo, um (01) semestre letivo, não podendo ser prorrogado pela natureza do estágio.<br><strong>Parágrafo Primeiro - </strong>O estudante poderá cumprir jornada de, no máximo, seis (06) horas diárias e trinta (30) semanais.<br><strong>Parágrafo Segundo</strong> – O não cumprimento de quaisquer cláusulas presentes no TERMO DE COMPROMISSO DE ESTÁGIO constitui motivos de imediata rescisão.<br><br><strong>CLÁUSULA 11ª</strong> – Havendo necessidade de rescisão contratual por qualquer das partes, deverá o(a) interessado(a) comunicar a intenção de fazê-lo previamente, por escrito, com pelo menos 10 (dez) dias de antecedência.<br><br><strong>CLÁUSULA 12ª&nbsp;</strong>– Os beneficiários de tal pacto não possuirão qualquer privilégio além dos previstos para os demais estudantes da INSTITUIÇÃO DE ENSINO.<br><br><strong>CLÁUSULA 13ª&nbsp;</strong>– Não será concedido gratuidade ou desconto por parte da INSTITUIÇÃO DE ENSINO em taxas acadêmicas e de<br>biblioteca.<br><br><strong>CLÁUSULA 14ª&nbsp;</strong>– Só poderão participar do presente termo de compromisso de estágio o(a) estudante que esteja em situação regular perante à INSTITUIÇÃO DE ENSINO.<br><br><strong>CLÁUSULA 15ª</strong> – A eventual tolerância da INSTITUIÇÃO DE ENSINO não implicará novação, perdão, renúncia, alteração ou modificação do presente pacto, sendo o evento ou omissão considerados, para os fins de direito, como mera liberalidade da INSTITUIÇÃO DE ENSINO, não implicando, na renúncia ou desistência de exigir o cumprimento das disposições aqui contidas ou do direito de requerer a total execução de cada uma das obrigações contidas neste contrato.<br><br><strong>CLÁUSULA 16ª&nbsp;</strong>– Fica eleito o Foro da Comarca de Bauru/SP, para dirimir qualquer questão resultante deste pacto.<br><br>E, por estarem de inteiro e comum acordo com as condições estabelecidas neste TERMO DE COMPROMISSO DE ESTÁGIO OBRIGATÓRIO, as partes o assinam em três (03) vias de igual teor.<br></p>
            </div>
        </div>
        <div class="row">
            <div class="col"><label class="col-form-label" style="font-size: 8px;">Bauru, <%=dataAtual%>&nbsp;</label></div>
        </div>
        <div class="row" style="margin-top: 36px;">
            <div class="col">
                <div class="row" style="text-align: center;">
                    <div class="col" style="text-align: center;"><label class="col-form-label" style="font-size: 8PX;font-weight: bold;text-align: center;padding-bottom: 1PX;">IASCJ - CENTRO UNIVERSITÁRIO SAGRADO CORAÇÃO - UNISAGRADO</label></div>
                </div>
                <div class="row" style="text-align: center;">
                    <div class="col"><label class="col-form-label" style="text-align: center;font-size: 8PX;padding-top: 1PX;">FLÁVIA DIAS GOMES<br>ASSISTENTE ADMINISTRATIVO<br></label></div>
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
                    <div class="col"><label class="col-form-label" style="text-align: center;font-size: 8PX;padding-top: 1PX;">1ª Testemunha<br><br>CPF/MF: ________________________<br></label></div>
                </div>
            </div>
            <div class="col">
                <div class="row" style="text-align: center;">
                    <div class="col" style="text-align: center;"><label class="col-form-label" style="font-size: 8PX;font-weight: bold;text-align: center;padding-bottom: 1PX;">______________________________</label></div>
                </div>
                <div class="row" style="text-align: center;">
                    <div class="col"><label class="col-form-label" style="text-align: center;font-size: 8PX;padding-top: 1PX;">2ª Testemunha<br><br>CPF/MF: ________________________<br></label></div>
                </div>
            </div>
        </div>
        <div class="row"></div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
