package br.com.infox.dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ConsultaAlugueis {
    public static List<String[]> getAlugueis() {
        List<String[]> alugueis = new ArrayList<>();
        
        try (Connection conexao = ModuloConexao.conector();
             Statement stmt = conexao.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM alura1.alugueis WHERE aluguel_id <= 10")) {

            while (rs.next()) {
                String aluguel_id = rs.getString("aluguel_id");
                String cliente_id = rs.getString("cliente_id");
                String hospedagem_id = rs.getString("hospedagem_id");
                String data_inicio = rs.getString("data_inicio");
                String data_fim = rs.getString("data_fim");
                String preço_total = rs.getString("preço_total");

                alugueis.add(new String[]{aluguel_id, cliente_id, hospedagem_id, data_inicio, data_fim, preço_total});
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return alugueis;
    }
}
