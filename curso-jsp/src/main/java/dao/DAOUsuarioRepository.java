package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelLogin;

public class DAOUsuarioRepository {
	
	private Connection connection;
	
	public DAOUsuarioRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public ModelLogin gravarUsuario(ModelLogin objeto, Long userLogado) throws Exception {
		
		if (objeto.isNovo()) {
		
		String sql = "INSERT INTO login(login, senha, nome, email, usuario_id, perfil, filial) VALUES (?, ?, ?, ?, ?, ?, ?);";
		PreparedStatement preparedSql = connection.prepareStatement(sql);
		
		preparedSql.setString(1, objeto.getLogin());
		preparedSql.setString(2, objeto.getSenha());
		preparedSql.setString(3, objeto.getNome());
		preparedSql.setString(4, objeto.getEmail());
		preparedSql.setLong(5, userLogado);
		preparedSql.setString(6, objeto.getPerfil());
		preparedSql.setString(7, objeto.getFilial());

		
		preparedSql.execute();
		
		connection.commit();
		
		
		
		
		}else {
			String sql = "UPDATE login SET login=?, senha=?, nome=?, email=?, perfil=?, filial=? WHERE id = "+objeto.getId()+";";
			PreparedStatement preparedSql = connection.prepareStatement(sql);
			
			preparedSql.setString(1, objeto.getLogin());
			preparedSql.setString(2, objeto.getSenha());
			preparedSql.setString(3, objeto.getNome());
			preparedSql.setString(4, objeto.getEmail());
			preparedSql.setString(5, objeto.getPerfil());
			preparedSql.setString(6, objeto.getFilial());
			
			preparedSql.executeUpdate();
			connection.commit();
			
		
		}
		
		return this.consultaUsuario(objeto.getLogin(), userLogado);
	}
	
public List<ModelLogin> consultaUsuarioListPaginada(Long userLogado, Integer offset) throws Exception {
		
		List<ModelLogin> retorno = new ArrayList<ModelLogin>();
		
		String sql = "select * from login where useradmin is false and usuario_id = " + userLogado + " order by nome offset "+offset+" limit 5";
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) { /*percorrer as linhas de resultado do SQL*/
			
			ModelLogin modelLogin = new ModelLogin();
			
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setNome(resultado.getString("nome"));
			//modelLogin.setSenha(resultado.getString("senha"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setFilial(resultado.getString("filial"));
			
			retorno.add(modelLogin);
		}
		
		
		return retorno;
	}


public int totalPagina(Long userLogado) throws Exception {
	
	String sql = "select count(1) as total from login  where usuario_id = " + userLogado;
	
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
	
		public List<ModelLogin> consultaUsuarioList(Long userLogado) throws Exception{
		
		List<ModelLogin> retorno = new ArrayList<ModelLogin>();
		
		String sql = "select * from login where useradmin is false and usuario_id = " + userLogado + " limit 5";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) {
			ModelLogin modelLogin = new ModelLogin();
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setFilial(resultado.getString("filial"));
			//modelLogin.setSenha(resultado.getString("senha"));
			
			retorno.add(modelLogin);
		}
		
		return retorno;
	}
		
		public int consultaUsuarioListTotalPaginaPaginacao(String nome, Long userLogado) throws Exception {
			
			
			String sql = "select count(1) as total from login  where upper(nome) like upper(?) and useradmin is false and usuario_id = ? ";
		
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, "%" + nome + "%");
			statement.setLong(2, userLogado);
			
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
		
		public List<ModelLogin> consultaUsuarioListOffSet(String nome, Long userLogado, int offset) throws Exception {
			
			List<ModelLogin> retorno = new ArrayList<ModelLogin>();
			
			String sql = "select * from login  where upper(nome) like upper(?) and useradmin is false and usuario_id = ? offset "+offset+" limit 5";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, "%" + nome + "%");
			statement.setLong(2, userLogado);
			
			ResultSet resultado = statement.executeQuery();
			
			while (resultado.next()) { /*percorrer as linhas de resultado do SQL*/
				
				ModelLogin modelLogin = new ModelLogin();
				
				modelLogin.setEmail(resultado.getString("email"));
				modelLogin.setId(resultado.getLong("id"));
				modelLogin.setLogin(resultado.getString("login"));
				modelLogin.setNome(resultado.getString("nome"));
				//modelLogin.setSenha(resultado.getString("senha"));
				modelLogin.setPerfil(resultado.getString("perfil"));
				modelLogin.setFilial(resultado.getString("filial"));
				
				retorno.add(modelLogin);
			}
			
			
			return retorno;
		}
		
	
	public List<ModelLogin> consultaUsuarioList(String nome, Long userLogado) throws Exception{
		
		List<ModelLogin> retorno = new ArrayList<ModelLogin>();
		
		String sql = "select * from login where upper(nome) like upper(?) and useradmin is false and usuario_id = ? limit 5";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		statement.setString(1, "%" + nome + "%");
		statement.setLong(2, userLogado);
		
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) {
			ModelLogin modelLogin = new ModelLogin();
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setFilial(resultado.getString("filial"));
			//modelLogin.setSenha(resultado.getString("senha"));
			
			retorno.add(modelLogin);
		}
		
		return retorno;
	}
	
		public ModelLogin consultaUsuarioLogado(String login) throws Exception {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from login where upper(login) = upper('"+login+"')";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) {
			
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setSenha(resultado.getString("senha"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setUseradmin(resultado.getBoolean("useradmin"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setFilial(resultado.getString("filial"));
			modelLogin.setAberturaficha(resultado.getString("aberturaficha"));
			
		}
		
		return modelLogin;
		
	}
	
public ModelLogin consultaUsuario(String login) throws Exception {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from login where upper(login) = upper('"+login+"') and useradmin is false ";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) {
			
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setSenha(resultado.getString("senha"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setUseradmin(resultado.getBoolean("useradmin"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setFilial(resultado.getString("filial"));
			
		}
		
		return modelLogin;
		
	}
	
	
	public ModelLogin consultaUsuario(String login, Long userLogado) throws Exception {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from login where upper(login) = upper('"+login+"') and useradmin is false and usuario_id = " + userLogado;
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) {
			
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setSenha(resultado.getString("senha"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setFilial(resultado.getString("filial"));
			
		}
		
		return modelLogin;
		
	}
	
public ModelLogin consultaUsuarioID(String id, Long userLogado) throws Exception {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select * from login where id = ? and useradmin is false and usuario_id = ?";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setLong(1, Long.parseLong(id));
		statement.setLong(2, userLogado);
		
		ResultSet resultado = statement.executeQuery();
		
		while (resultado.next()) {
			
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setEmail(resultado.getString("email"));
			modelLogin.setLogin(resultado.getString("login"));
			modelLogin.setSenha(resultado.getString("senha"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setFilial(resultado.getString("filial"));
			
		}
		
		return modelLogin;
		
	}
	
	public boolean validarLogin (String login) throws Exception {
		String sql = "select count(1) > 0 as existe from login where upper(login) = upper('"+login+"');";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resultado = statement.executeQuery();
		
			resultado.next(); 
			return resultado.getBoolean("existe");
		
	}
	
	public void deletarUser(String idUser) throws Exception {
		String sql = "DELETE FROM login WHERE id = ? and useradmin is false;";
				PreparedStatement prepareSql = connection.prepareStatement(sql);
				
				prepareSql.setLong(1, Long.parseLong(idUser));
		
				prepareSql.executeUpdate();
				
				connection.commit();
		
		
	}
}
