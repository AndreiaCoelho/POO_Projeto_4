<%-- 
    Document   : home
    Created on : 02/05/2017, 16:37:31
    Author     : Andréia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container">
        <div class="container-fluid">
            </br></br>
            <div class="container-fluid">
                <h1>Aplicação para Cadastro de Clientes e Fornecedores</h1>
                </br></br></br>
                <img align="center" src="imagens/Cliente.jpg" alt="Flower" width="460" height="345">
                
                <img align="center" src="imagens/fornecedor.png" alt="Flower" width="460" height="345">
            </br></br></br></br></br></br>
                                        
            </div>
                </br></br></br>

                <div id="equipe" class="container-fluid">
                    <h2>Equipe</h2> 
                    <div class="row placeholders col-md-offset-2">
                        <div class="col-xs-6 col-sm-3 col-md-6">
                            <img src="imagens/andreia.jpg" width="200" height="200" class="img-circle" alt="Generic placeholder thumbnail"/>
                            <h4>Andréia Coelho</h4>
                            <span class="text-muted"> Desenvolvedora do JSP Home e Cadastro de Cliente</span>
                        </div>
                        <div class="col-xs-6 col-sm-3 col-md-6">
                            <img src="imagens/ricky.jpg" width="200" height="200" class="img-circle" alt="Generic placeholder thumbnail"/>
                            <h4>Daniel</h4>
                            <span class="text-muted"> Desenvolvedor de Cadastro de Fornecedor</span>
                        </div>
                    </div>
                </div>
            
            </br></br></br></br></br></br></br></br></br></br>
            <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
