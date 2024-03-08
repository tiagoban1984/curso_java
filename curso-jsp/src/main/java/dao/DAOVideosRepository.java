package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelLogin;

public class DAOVideosRepository {
	
	private Connection connection;
	
	public DAOVideosRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public String aberturaficha(ModelLogin modelLogin) throws Exception  {
		
			String sql = "UPDATE login SET aberturaficha=? WHERE login =?";
			PreparedStatement preparedSql = connection.prepareStatement(sql);
			
			preparedSql.setString(1, modelLogin.getAberturaficha());
			preparedSql.setString(2, modelLogin.getIdaval());
			
			preparedSql.executeUpdate();
			connection.commit();
			return sql;
			
	}
	

	
}
