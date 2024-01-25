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
		
		String sql = "SELECT colaboradores.*, avaliacao.mediavaliacao, avaliacao.mediavaliacao2, avaliacao.mediavaliacao3, avaliacao.mediavaliacao4, avaliacao.mediavaliacao5, avaliacao.mediavaliacao6, avaliacao.mediavaliacao7, avaliacao.mediavaliacao8, avaliacao.data FROM colaboradores LEFT JOIN avaliacao ON colaboradores.id = avaliacao.colaboradores_pai_id WHERE upper(colaboradores.nome) LIKE upper(?);";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, "%" + nome + "%");
		
		ResultSet resultado = statement.executeQuery();
		
		while(resultado.next()) {
			ModelLogin modelLogin = new ModelLogin();
			
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSetor(resultado.getString("setor"));
			modelLogin.setMediavaliacao(resultado.getDouble("mediavaliacao"));
			modelLogin.setMediavaliacao2(resultado.getDouble("mediavaliacao2"));
			modelLogin.setMediavaliacao3(resultado.getDouble("mediavaliacao3"));
			modelLogin.setMediavaliacao4(resultado.getDouble("mediavaliacao4"));
			modelLogin.setMediavaliacao5(resultado.getDouble("mediavaliacao5"));
			modelLogin.setMediavaliacao6(resultado.getDouble("mediavaliacao6"));
			modelLogin.setMediavaliacao7(resultado.getDouble("mediavaliacao7"));
			modelLogin.setMediavaliacao8(resultado.getDouble("mediavaliacao8"));
			modelLogin.setData(resultado.getDate("data"));
			
			retorno.add(modelLogin);
		}
		
		return retorno;
	}
	
	public ModelLogin consultaUsuarioID(Long id) throws Exception {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "SELECT colaboradores.*, avaliacao.mediavaliacao,  avaliacao.mediavaliacao2, avaliacao.mediavaliacao3, avaliacao.mediavaliacao4, avaliacao.mediavaliacao5, avaliacao.mediavaliacao6, avaliacao.mediavaliacao7, avaliacao.mediavaliacao8, avaliacao.data FROM colaboradores LEFT JOIN avaliacao ON colaboradores.id = avaliacao.colaboradores_pai_id WHERE colaboradores.id = ?;";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setLong(1, (id));
		
		ResultSet resultado =  statement.executeQuery();
		
		while (resultado.next()) {
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSetor(resultado.getString("setor"));
			modelLogin.setMediavaliacao(resultado.getDouble("mediavaliacao"));
			modelLogin.setMediavaliacao2(resultado.getDouble("mediavaliacao2"));
			modelLogin.setMediavaliacao3(resultado.getDouble("mediavaliacao3"));
			modelLogin.setMediavaliacao4(resultado.getDouble("mediavaliacao4"));
			modelLogin.setMediavaliacao5(resultado.getDouble("mediavaliacao5"));
			modelLogin.setMediavaliacao6(resultado.getDouble("mediavaliacao6"));
			modelLogin.setMediavaliacao7(resultado.getDouble("mediavaliacao7"));
			modelLogin.setMediavaliacao8(resultado.getDouble("mediavaliacao8"));
			modelLogin.setData(resultado.getDate("data"));
		}
		
		return modelLogin;
}

	public ModelLogin consultaUsuario(String nome) throws Exception {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "SELECT colaboradores.*, avaliacao.mediavaliacao, avaliacao.mediavaliacao2, avaliacao.mediavaliacao3, avaliacao.mediavaliacao4, avaliacao.mediavaliacao5, avaliacao.mediavaliacao6, avaliacao.mediavaliacao7, avaliacao.mediavaliacao8\r\n"
				+ "FROM colaboradores\r\n"
				+ "LEFT JOIN avaliacao ON colaboradores.id = avaliacao.colaboradores_pai_id\r\n"
				+ "WHERE upper(colaboradores.nome) = upper(?);\r\n"
				+ "";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, nome);
		
		ResultSet resultado =  statement.executeQuery();
		
		while (resultado.next()) {
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSetor(resultado.getString("setor"));
			modelLogin.setMediavaliacao(resultado.getDouble("mediavaliacao"));
			modelLogin.setMediavaliacao2(resultado.getDouble("mediavaliacao2"));
			modelLogin.setMediavaliacao3(resultado.getDouble("mediavaliacao3"));
			modelLogin.setMediavaliacao4(resultado.getDouble("mediavaliacao4"));
			modelLogin.setMediavaliacao5(resultado.getDouble("mediavaliacao5"));
			modelLogin.setMediavaliacao6(resultado.getDouble("mediavaliacao6"));
			modelLogin.setMediavaliacao7(resultado.getDouble("mediavaliacao7"));
			modelLogin.setMediavaliacao8(resultado.getDouble("mediavaliacao8"));
		}
		
		return modelLogin;
}

	public ModelLogin consultaColaboradorID(String colaboradores_pai_id) {
		// TODO Auto-generated method stub
		return null;
	}
}
