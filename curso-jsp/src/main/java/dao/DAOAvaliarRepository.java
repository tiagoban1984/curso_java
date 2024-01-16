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
	        modelAvaliar.setColaboradores_cad_id(daoColaboradoresReository.consultaColaboradorID(rs.getLong("colaboradores_cad_id")));
	        modelAvaliar.setColaboradores_pai_id(daoColaboradoresReository.consultaColaboradorID(rs.getLong("colaboradores_pai_id")));
	        
	        
	        retorno.add(modelAvaliar);
	    }
		
		return retorno;
		
	}
	
	
	public void gravaAvaliacao (ModelAvaliar ModelAvaliar) throws Exception {
		
		String sql = "insert into avaliacao (numero, colaboradores_pai_id, colaboradores_cad_id) values (?, ?, ?)";
		
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, ModelAvaliar.getAval1());
		preparedStatement.setLong(2,  ModelAvaliar.getColaboradores_pai_id().getId());
		preparedStatement.setLong(3,  ModelAvaliar.getColaboradores_cad_id().getId());
		
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