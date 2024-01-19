package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelAvaliar;
/*import model.ModelAvaliar;*/

public class DAOAvaliarRepository {
	
	private Connection connection;
	
	private DAOColaboradoresReository daoColaboradoresReository = new DAOColaboradoresReository();
			
	
	public DAOAvaliarRepository() {
		connection = SingleConnectionBanco.getConnection();
		
		}
	
	public List<ModelAvaliar> listAvaliacao(Long idUserPai) throws Exception {
	    List<ModelAvaliar> retorno = new ArrayList<ModelAvaliar>();
	    String sql = "select * from avaliacao where colaboradores_pai_id = ?";
	    PreparedStatement preparedStatement = connection.prepareStatement(sql);

	    preparedStatement.setLong(1, idUserPai);

	    ResultSet rs = preparedStatement.executeQuery();

	    while (rs.next()) {
	        ModelAvaliar modelAvaliar = new ModelAvaliar();
	        modelAvaliar.setId(rs.getLong("id"));
	        modelAvaliar.setAval1(rs.getString("numero"));
	        modelAvaliar.setColaboradores_pai_id(daoColaboradoresReository.consultaColaboradorID(rs.getLong("colaboradores_pai_id")));
	        
	        
	        retorno.add(modelAvaliar);
	    }
		
		return retorno;
		
	}
	
	
	public void gravaAvaliacao (ModelAvaliar ModelAvaliar) throws Exception {
		
		String sql = "insert into avaliacao (numero, numero1, numero2, numero21, numero22, numero23, mediavaliacao2, mediavaliacao, colaboradores_pai_id) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, ModelAvaliar.getAval1());
		preparedStatement.setString(2, ModelAvaliar.getAval2());
		preparedStatement.setString(3, ModelAvaliar.getAval3());
		preparedStatement.setString(4, ModelAvaliar.getAval21());
		preparedStatement.setString(5, ModelAvaliar.getAval2());
		preparedStatement.setString(6, ModelAvaliar.getAval23());
		preparedStatement.setDouble(7, ModelAvaliar.getMediavaliacao2());
		preparedStatement.setDouble(8, ModelAvaliar.getMediavaliacao());
		preparedStatement.setLong(9,  ModelAvaliar.getColaboradores_pai_id().getId());;
		
		preparedStatement.execute();
		
		connection.commit();
		
		
	}
	

	
	public void deleteAvaliacao (Long id) throws Exception {
		String sql = "delete from avaliacao where id = ?";
		
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setLong(1, id);
		
		preparedStatement.executeUpdate();
		
		connection.commit();	
		
	}
	
}