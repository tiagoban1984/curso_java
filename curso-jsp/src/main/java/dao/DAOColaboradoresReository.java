package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelLogin;

public class DAOColaboradoresReository {
	
	private Connection connection;
	
	public DAOColaboradoresReository() {
		connection = SingleConnectionBanco.getConnection();
	}

	public ModelLogin gravarColaborador(ModelLogin objeto) throws Exception {
		
		if (objeto.isNovo()) {
		
		String sql = "insert into colaboradores (cpf, nome, setor) values (?, ?, ?); ";
		PreparedStatement preparedSql = connection.prepareStatement(sql);
		
		preparedSql.setString(1, objeto.getCpf());
		preparedSql.setString(2, objeto.getNome());
		preparedSql.setString(3, objeto.getSetor());
		
		preparedSql.execute();
		
		connection.commit();
		
		}else {
			String sql ="UPDATE colaboradores SET nome=?, cpf=?, setor=? where id = "+objeto.getId()+";";
			PreparedStatement prepareSql = connection.prepareStatement(sql);
			prepareSql.setString(1, objeto.getNome());
			prepareSql.setString(2, objeto.getCpf());
			prepareSql.setString(3, objeto.getSetor());
			
			prepareSql.executeUpdate();
			
			connection.commit();
		}
		return this.consultaColaborador(objeto.getNome());
		
	}
	
public int consultaColaboradoresListTotalPaginacao(String nome) throws Exception {
		
		String sql = "select count(1) as total from colaboradores where upper(nome) like upper (?) ";
		
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

	
	public List<ModelLogin> consultaColaboradoresList(String nome) throws Exception {
		
		List<ModelLogin> retorno = new ArrayList<ModelLogin>();
		
		String sql = "select * from colaboradores where upper(nome) like upper (?) limit 5 ";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, "%" + nome + "%");
		
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) {
			
			ModelLogin modelLogin = new ModelLogin();
			
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSetor(resultado.getString("setor"));
			
			retorno.add(modelLogin);
		}
		
		return retorno;
	}
	
public List<ModelLogin> consultaColaboradoresList() throws Exception {
		
		List<ModelLogin> retorno = new ArrayList<ModelLogin>();
		
		String sql = "select * from colaboradores limit 5 ";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) {
			
			ModelLogin modelLogin = new ModelLogin();
			
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSetor(resultado.getString("setor"));
			
			retorno.add(modelLogin);
		}
		
		return retorno;
	}

public int totalPagina() throws Exception {
	
	String sql = "select count(1) as total from colaboradores ";
	
	PreparedStatement statement = connection.prepareStatement(sql);
	
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

public List<ModelLogin> consultaColaboradoresListOffSet(String nome, int offset) throws Exception {
	
	List<ModelLogin> retorno = new ArrayList<ModelLogin>();
	
	String sql = "select * from colaboradores  where upper(nome) like upper(?) offset "+offset+" limit 5";
	PreparedStatement statement = connection.prepareStatement(sql);
	statement.setString(1, "%" + nome + "%");
	
	ResultSet resultado = statement.executeQuery();
	
	while (resultado.next()) { /*percorrer as linhas de resultado do SQL*/
		
		ModelLogin modelLogin = new ModelLogin();
		
		modelLogin.setCpf(resultado.getString("cpf"));
		modelLogin.setId(resultado.getLong("id"));
		modelLogin.setNome(resultado.getString("nome"));
		modelLogin.setSetor(resultado.getString("setor"));
		
		retorno.add(modelLogin);
	}
	
	
	return retorno;
}

public List<ModelLogin> consultaColaboradoresListPaginada(Integer offset) throws Exception {
	
	List<ModelLogin> retorno = new ArrayList<ModelLogin>();
	
	String sql = "select * from colaboradores offset "+offset+" limit 5 ";
	
	PreparedStatement statement = connection.prepareStatement(sql);
	
	ResultSet resultado = statement.executeQuery();
	
	while (resultado.next()) {
		
		ModelLogin modelLogin = new ModelLogin();
		
		modelLogin.setCpf(resultado.getString("cpf"));
		modelLogin.setId(resultado.getLong("id"));
		modelLogin.setNome(resultado.getString("nome"));
		modelLogin.setSetor(resultado.getString("setor"));
		
		retorno.add(modelLogin);
	}
	
	return retorno;
}
	
	public ModelLogin consultaColaborador(String nome) throws Exception {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from colaboradores where upper(nome) = upper('"+nome+"');";
		PreparedStatement statement = connection.prepareStatement(sql);
				
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) {
			
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSetor(resultado.getString("setor"));
		}
		
		return modelLogin;
	}
	
	public ModelLogin consultaColaboradorID(Long id) throws Exception {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from colaboradores where id = ?;";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setLong(1, id);
				
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) {
			
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSetor(resultado.getString("setor"));
		}
		
		return modelLogin;
	}
	
public ModelLogin imprimirRelatorio(Long id) throws Exception {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "SELECT colaboradores.*, avaliacao.data, avaliacao.mediavaliacao, avaliacao.mediavaliacao2 FROM colaboradores LEFT JOIN avaliacao ON colaboradores.id = avaliacao.colaboradores_pai_id WHERE colaboradores.id = ?;";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setLong(1, id);
				
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) {
			
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setCpf(resultado.getString("cpf"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setSetor(resultado.getString("setor"));
			modelLogin.setData(resultado.getDate("data"));
			modelLogin.setMediavaliacao(resultado.getDouble("mediavaliacao"));
			modelLogin.setMediavaliacao2(resultado.getDouble("mediavaliacao2"));
			
		}
		
		return modelLogin;
	}
	
	public boolean validarCpf(String cpf) throws Exception {
		String sql = "select count(1) > 0 as existe from colaboradores where upper(cpf) = upper('"+cpf+"');";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resultado = statement.executeQuery();
		
		resultado.next();
			return resultado.getBoolean("existe");
		
		
	}
	
	public void deletarUser(String idUser) throws Exception {
		String sql = "DELETE FROM colaboradores where id = ?;";
		PreparedStatement prepareSql = connection.prepareStatement(sql);
		prepareSql.setLong(1, Long.parseLong(idUser));
		
		prepareSql.executeUpdate();
		connection.commit();
		
		}
}
