<%-- 
    Document   : index
    Created on : 16 de fev. de 2025, 17:46:12
    Author     : Charles
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--Variáveis-->
<% 
   String nome = "Charles";
   String nome2 = "Jade";
   String nome3 = "Gécica";
   String titleInput = "Título do Input: ";
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Primeiro Projeto JSP</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    </head>
    <body>
        
        <div class="container text-center align-items-center">
            
        <h1>Cadastro de Pessoas</h1>
<!--        <h2><%= nome%></h2>
        <h3><%= nome2 %></h3>
        <h3><%= nome3 %></h3>-->
            
        </div>
        
        <b></b>
        
<!--        Formulário-->
        
        <div class="container">
            <form method="POST" action="index.jsp">
              <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label" style="font-weight: bold">Nome</label>
                <input type="text" class="form-control" name="nomeParametro" id="nome" aria-describedby="emailHelp">
                <div id="emailHelp" class="form-text">Informe seu nome</div>
              </div>
              <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label" style="font-weight: bold">Email</label>
                <input type="email" class="form-control" name="email" id="emai1" aria-describedby="emailHelp">
                <div id="emailHelp" class="form-text">Informe seu e-mail</div>
              </div>
              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label" style="font-weight: bold">Senha</label>
                <input type="password" class="form-control" name="senha" id="senha">
              </div>
              <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
              </div>
             
              <button type="submit" class="btn btn-primary mb-3">Enviar</button>
              
            </form>
            
            <p style="font-weight: bold">
                <%= titleInput%>
            </p>
            
            <p class="text-muted">
            
                <% 
                    String textInput = request.getParameter("nomeParametro");
                    out.println(textInput);
                %>
            
            </p>
            
        </div>
        
<!--        Tabela-->
        
        <div class="container">
            <table class="table">
                <thead>
                  <tr class="table-dark">
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td colspan="2">Larry the Bird</td>
                    <td>@twitter</td>
                  </tr>
                </tbody>
            </table>
        </div>
        
    </body>
</html>
