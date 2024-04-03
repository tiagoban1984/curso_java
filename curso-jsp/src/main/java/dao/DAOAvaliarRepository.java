package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.plaf.synth.SynthOptionPaneUI;

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
		
		String sql = "INSERT INTO avaliacao (numero, numero1, numero2, numero21, numero22, numero23, numero31, numero32, numero33, numero41, numero42, numero43, numero51, numero52, numero53, numero61, numero62, numero63, numero71, numero72, numero73, numero8, mediavaliacao5, mediavaliacao6, mediavaliacao7, mediavaliacao8, mediavaliacao4, mediavaliacao3, mediavaliacao2, mediavaliacao, mediatotalhalo, tmpexperiencia, avaliador, colaboradores_pai_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, ModelAvaliar.getAval1());
		preparedStatement.setString(2, ModelAvaliar.getAval2());
		preparedStatement.setString(3, ModelAvaliar.getAval3());
		preparedStatement.setString(4, ModelAvaliar.getAval21());
		preparedStatement.setString(5, ModelAvaliar.getAval22());
		preparedStatement.setString(6, ModelAvaliar.getAval23());
		preparedStatement.setString(7, ModelAvaliar.getAval31());
		preparedStatement.setString(8, ModelAvaliar.getAval32());
		preparedStatement.setString(9, ModelAvaliar.getAval33());
		preparedStatement.setString(10, ModelAvaliar.getAval41());
		preparedStatement.setString(11, ModelAvaliar.getAval42());
		preparedStatement.setString(12, ModelAvaliar.getAval43());
		preparedStatement.setString(13, ModelAvaliar.getAval51());
		preparedStatement.setString(14, ModelAvaliar.getAval52());
		preparedStatement.setString(15, ModelAvaliar.getAval53());
		preparedStatement.setString(16, ModelAvaliar.getAval61());
		preparedStatement.setString(17, ModelAvaliar.getAval62());
		preparedStatement.setString(18, ModelAvaliar.getAval63());
		preparedStatement.setString(19, ModelAvaliar.getAval71());
		preparedStatement.setString(20, ModelAvaliar.getAval72());
		preparedStatement.setString(21, ModelAvaliar.getAval73());
		preparedStatement.setString(22, ModelAvaliar.getAval8());
		preparedStatement.setDouble(23, ModelAvaliar.getMediavaliacao5());
		preparedStatement.setDouble(24, ModelAvaliar.getMediavaliacao6());
		preparedStatement.setDouble(25, ModelAvaliar.getMediavaliacao7());
		preparedStatement.setDouble(26, ModelAvaliar.getMediavaliacao8());
		preparedStatement.setDouble(27, ModelAvaliar.getMediavaliacao4());
		preparedStatement.setDouble(28, ModelAvaliar.getMediavaliacao3());
		preparedStatement.setDouble(29, ModelAvaliar.getMediavaliacao2());
		preparedStatement.setDouble(30, ModelAvaliar.getMediavaliacao());
		preparedStatement.setDouble(31, ModelAvaliar.getMediatotalhalo());
		preparedStatement.setString(32, ModelAvaliar.getExperiencia());
		preparedStatement.setString(33, ModelAvaliar.getLogin());
		preparedStatement.setLong(34, ModelAvaliar.getColaboradores_pai_id().getId());

		preparedStatement.executeUpdate();

		
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