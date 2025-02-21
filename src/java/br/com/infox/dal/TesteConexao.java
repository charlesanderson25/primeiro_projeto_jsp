/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.infox.dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TesteConexao {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/alura1?useTimezone=true&serverTimezone=UTC";
        String user = "root";
        String password = "lakers25";

        try {
            // Carrega o driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Tenta conectar
            Connection conexao = DriverManager.getConnection(url, user, password);
            System.out.println("✅ Conectado com sucesso!");

            conexao.close(); // Fecha a conexão
        } catch (ClassNotFoundException e) {
            System.out.println("❌ Driver JDBC não encontrado!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("❌ Erro ao conectar: " + e.getMessage());
            e.printStackTrace();
        }
    }
}

