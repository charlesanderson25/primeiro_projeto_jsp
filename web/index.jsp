<%-- 
    Document   : index
    Created on : 16 de fev. de 2025, 17:46:12
    Author     : Charles
--%>

<!--
<%-- 
    Sintaxe dos elementos JSP
    
    Scriplet       <%      %>
    Comentários    <%--  --%>
    Diretivas      <%//@     %>
    Declarações    <%//!     %>
    Expressões     <%//=     %>
--%>
-->

<%-- 
    Dados para conexão com banco de dados:

    URL: 127.0.0.1/3306
    USER: root
    PASSWORD: lakers25
--%>

<%@page import="java.sql.*"%>
<%@page import="br.com.infox.dal.ConsultaAlugueis"%>
<%@page import="java.util.List"%>
<%//import br.com.info.dal.ModuloConexao;%>
<%@page import="br.com.infox.dal.ModuloConexao"%>
<%@page import="java.sql.Connection"%>

<%
    Connection conexao = ModuloConexao.conector();
    String status = (conexao != null) ? "Conectado com sucesso!" : "Erro ao conectar com o banco de dados.";
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--Variáveis-->
<%! 
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
        
<!--        Teste Conexão-->
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Teste de Conexão</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    </head>
    <body>
        
<!--        Teste conexão-->
        <div class="container text-center mt-5">
        <h1>Status da Conexão com o Banco de Dados</h1>
        <p class="fw-bold <%= (conexao != null) ? "text-success" : "text-danger" %>">
            <%= status %>
        </p>
        </div>
        <!--Fim teste conexão-->
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

        <%
            List<String[]> alugueis = ConsultaAlugueis.getAlugueis();
        %>


        
        <div class="container">
            <table class="table">
                <thead>
                  <tr class="table-dark">
                    <th scope="col">Aluguel ID</th>
                    <th scope="col">Cliente ID</th>
                    <th scope="col">Hospedagem_ID</th>
                    <th scope="col">Data Início</th>
                    <th scope="col">Data Fim</th>
                    <th scope="col">Preço Total</th>
                  </tr>
                </thead>
                <tbody>
                    <% for (String[] aluguel : alugueis) { %>
                  <tr>
                    <th scope="row">1</th>
                    <td><%= aluguel[0]%></td>
                    <td><%= aluguel[1]%></td>
                    <td><%= aluguel[2]%></td>
                    <td><%= aluguel[3]%></td>
                    <td><%= aluguel[4]%></td>
                    <td><%= aluguel[5]%></td>
                  </tr>
                  <% } %>
                </tbody>
            </table>
        </div>
        
<!--        Exemplos de utilização do Java no JSP-->
        <div class="container">
            <%! int contador = 0; %>
            <p>
                Visitas: <%= contador++ %>
            </p>
        </div>
    
        <div class="container">
            <p>
                <%
                    int contador1 = 0;
                    contador++;
                    out.println("Visitas1: " + contador);
                %>
            </p>
        </div>

    </body>
</html>
