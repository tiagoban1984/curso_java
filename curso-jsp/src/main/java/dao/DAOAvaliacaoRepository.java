package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelLogin;

public class DAOAvaliacaoRepository {
	
	private Connection connection;
	
	public DAOAvaliacaoRepository() {
		connection = SingleConnectionBanco.getConnection();
		
	}
	
public int consultaUsuarioListTotalPaginaPaginacao(String nome) throws Exception {
		
		String sql = "select count(1) as total from colaboradores where upper(nome) like upper(?)";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, "%" + nome + "%");
		
		ResultSet resultado = statement.executeQuery();
		
		resultado.next();
		
		Double cadastros = resultado.getDouble("total");
		
		Double porpagina = 5.0;
		
		Double pagina = cadastros / porpagina;
		
		Double resto = pagina % 2;
		
		if (resto > 0) {
			pagina ++;
		}
		
		return pagina.intValue();
		
	}

	
	public List<ModelLogin> consultaUsuarioList(String nome) throws Exception {
		
		List<ModelLogin> retorno = new ArrayList<ModelLogin>();
		
		String sql = "select * from colaboradores where upper(nome) like upper(?)";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, "%" + nome + "%");
		
		ResultSet resultado = statement.executeQuery();
		
		while(resultado.next()) {
			ModelLogin modelLogin = new ModelLogin();
			
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSetor(resultado.getString("setor"));
			
			retorno.add(modelLogin);
		}
		
		return retorno;
	}
	
	public ModelLogin consultaUsuarioID(Long id) throws Exception {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from colaboradores where id = ? ";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setLong(1, (id));
		
		ResultSet resultado =  statement.executeQuery();
		
		while (resultado.next()) {
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSetor(resultado.getString("setor"));
		}
		
		return modelLogin;
}

	public ModelLogin consultaUsuario(String nome) throws Exception {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from colaboradores where upper(nome) = upper('?')";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, nome);
		
		ResultSet resultado =  statement.executeQuery();
		
		while (resultado.next()) {
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSetor(resultado.getString("setor"));
		}
		
		return modelLogin;
}

	public ModelLogin consultaColaboradorID(String colaboradores_pai_id) {
		// TODO Auto-generated method stub
		return null;
	}
}
