/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.infox.dal;

import java.sql.*;

/**
 *
 * @author Charles
 */
 
public class ModuloConexao {
    //Método responsável por estabelecer a conexão com o banco de dados
    public static Connection conector(){
        java.sql.Connection conexao = null;
        //a linha abaixo chama o driver importado em Libraries 
//        String driver = "com.mysql.jdbc.Driver";
        String driver = "com.mysql.cj.jdbc.Driver";  // Correto para MySQL 8+


        //Armazenando informações referentes ao banco de dados
//        String url = "jdbc:mysql://localhost:3306/alura1";
        String url = "jdbc:mysql://localhost:3306/alura1?useTimezone=true&serverTimezone=UTC";

        String user= "root";
        String password = "";
        //Estabelecendo a conexão com o banco de dados
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {
            return null;
        }
    }
}
