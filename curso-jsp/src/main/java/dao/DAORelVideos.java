package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelLogin;

public class DAORelVideos {
	
	private Connection connection;
	
	public DAORelVideos() {
		connection = SingleConnectionBanco.getConnection();
		
	}
	
public int consultaUsuarioListTotalPaginaPaginacao(String nome) throws Exception {
		
		String sql = "select count(1) as total from login where upper(nome) like upper(?)";
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
		
		String sql = "select id, nome, perfil, filial, nbscrmgold, aberturaficha, consultaagenda, filtrarficha, manutencaoficha, tstdriveapre, consestoqplano, pedvenveicestoqvista, planomensalfirm, "
				+ "pedvenveicmodelo, reservaveicestoq, pedvensnefinanciam, feibtb, feifei, feisissmart, feipropvenda, feiabrpropfinanc, feiabrpropfinanc2, feiabrpropconsorcio, feicomoeditarprop, feisitpropbanca, "
				+ "feiconfanalbanca, aavcomologar, aavprocautoav, fininfogerais, conintroconsorcio, uniintroprocvendas, unitreinamento1, unitreinamento2, entpassovenent, entonetoyota, oneoquee, "
				+ "onepdfpergrespostas, simqualificacao, simtstapresent, sispdfprocvendas, simvuqualificacao, simvutstapresenta, "
				+ "simvupdfprocvendas, nbsvucadclie, nbsvucriaevesemcad, nbsvualtcadimpevento, nbsvuencerraevento, nbsvuemitirproposta, nbsvuinsavafinanc, nbsvuprocessoentrega, nbsvuunicodoc, nbsvuunicoabertprocesso, "
				+ "nbsvuconsestoqnbs  from login WHERE upper(nome) LIKE upper(?);";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, "%" + nome + "%");
		
		ResultSet resultado = statement.executeQuery();
		
		while(resultado.next()) {
			ModelLogin modelLogin = new ModelLogin();
			
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setFilial(resultado.getString("filial"));
			modelLogin.setNbscrmgold(resultado.getString("nbscrmgold"));
			modelLogin.setAberturaficha(resultado.getString("aberturaficha"));
			modelLogin.setConsultaagenda(resultado.getString("consultaagenda"));
			modelLogin.setFiltrarficha(resultado.getString("filtrarficha"));
			modelLogin.setManutencaoficha(resultado.getString("manutencaoficha"));
			modelLogin.setTstdriveapre(resultado.getString("tstdriveapre"));
			modelLogin.setConsestoqplano(resultado.getString("consestoqplano"));
			modelLogin.setPedvenveicestoqvista(resultado.getString("pedvenveicestoqvista"));
			modelLogin.setPlanomensalfirm(resultado.getString("planomensalfirm"));
			modelLogin.setPedvenveicmodelo(resultado.getString("pedvenveicmodelo"));
			modelLogin.setReservaveicestoq(resultado.getString("reservaveicestoq"));
			modelLogin.setPedvensnefinanciam(resultado.getString("pedvensnefinanciam"));
			modelLogin.setFeibtb(resultado.getString("feibtb"));
			modelLogin.setFeifei(resultado.getString("feifei"));
			modelLogin.setFeisissmart(resultado.getString("feisissmart"));
			modelLogin.setFeipropvenda(resultado.getString("feipropvenda"));
			modelLogin.setFeiabrpropfinanc(resultado.getString("feiabrpropfinanc"));
			modelLogin.setFeiabrpropfinanc2(resultado.getString("feiabrpropfinanc2"));
			modelLogin.setFeiabrpropconsorcio(resultado.getString("feiabrpropconsorcio"));
			modelLogin.setFeicomoeditarprop(resultado.getString("feicomoeditarprop"));
			modelLogin.setFeisitpropbanca(resultado.getString("feisitpropbanca"));
			modelLogin.setFeiconfanalbanca(resultado.getString("feiconfanalbanca"));
			modelLogin.setAavcomologar(resultado.getString("aavcomologar"));
			modelLogin.setAavprocautoav(resultado.getString("aavprocautoav"));
			modelLogin.setFininfogerais(resultado.getString("fininfogerais"));
			modelLogin.setConintroconsorcio(resultado.getString("conintroconsorcio"));
			modelLogin.setUniintroprocvendas(resultado.getString("uniintroprocvendas"));
			modelLogin.setUnitreinamento1(resultado.getString("unitreinamento1"));
			modelLogin.setUnitreinamento2(resultado.getString("unitreinamento2"));
			modelLogin.setEntpassovenent(resultado.getString("entpassovenent"));
			modelLogin.setEntonetoyota(resultado.getString("entonetoyota"));
			modelLogin.setOneoquee(resultado.getString("oneoquee"));
			modelLogin.setOnepdfpergrespostas(resultado.getString("onepdfpergrespostas"));
			modelLogin.setSimqualificacao(resultado.getString("simqualificacao"));
			modelLogin.setSimtstapresent(resultado.getString("simtstapresent"));
			modelLogin.setSispdfprocvendas(resultado.getString("sispdfprocvendas"));
			modelLogin.setNbsvucadclie(resultado.getString("nbsvucadclie"));
			modelLogin.setNbsvucriaevesemcad(resultado.getString("nbsvucriaevesemcad"));
			modelLogin.setNbsvualtcadimpevento(resultado.getString("nbsvualtcadimpevento"));
			modelLogin.setNbsvuencerraevento(resultado.getString("nbsvuencerraevento"));
			modelLogin.setNbsvuemitirproposta(resultado.getString("nbsvuemitirproposta"));
			modelLogin.setNbsvuinsavafinanc(resultado.getString("nbsvuinsavafinanc"));
			modelLogin.setNbsvuprocessoentrega(resultado.getString("nbsvuprocessoentrega"));
			modelLogin.setNbsvuunicodoc(resultado.getString("nbsvuunicodoc"));
			modelLogin.setNbsvuunicoabertprocesso(resultado.getString("nbsvuunicoabertprocesso"));
			modelLogin.setNbsvuconsestoqnbs(resultado.getString("nbsvuconsestoqnbs"));
			modelLogin.setSimvuqualificacao(resultado.getString("simvuqualificacao"));
			modelLogin.setSimvutstapresenta(resultado.getString("simvutstapresenta"));
			modelLogin.setSimvupdfprocvendas(resultado.getString("simvupdfprocvendas"));
			
			retorno.add(modelLogin);
		}
		
		return retorno;
	}
	
	public ModelLogin consultaUsuarioID(Long id) throws Exception {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select id, nome, perfil, filial, nbscrmgold, aberturaficha, consultaagenda, filtrarficha, manutencaoficha, tstdriveapre, consestoqplano, pedvenveicestoqvista, planomensalfirm, "
				+ "pedvenveicmodelo, reservaveicestoq, pedvensnefinanciam, feibtb, feifei, feisissmart, feipropvenda, feiabrpropfinanc, feiabrpropfinanc2, feiabrpropconsorcio, feicomoeditarprop, feisitpropbanca, "
				+ "feiconfanalbanca, aavcomologar, aavprocautoav, fininfogerais, conintroconsorcio, uniintroprocvendas, unitreinamento1, unitreinamento2, entpassovenent, entonetoyota, oneoquee, "
				+ "onepdfpergrespostas, simqualificacao, simtstapresent, sispdfprocvendas, simvuqualificacao, simvutstapresenta, simvupdfprocvendas, nbsvucadclie, nbsvucriaevesemcad, nbsvualtcadimpevento, "
				+ "nbsvuencerraevento, nbsvuemitirproposta, nbsvuinsavafinanc, nbsvuprocessoentrega, nbsvuunicodoc, nbsvuunicoabertprocesso, nbsvuconsestoqnbs from login WHERE id = ?;";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setLong(1, (id));
		
		ResultSet resultado =  statement.executeQuery();
		
		while (resultado.next()) {
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setFilial(resultado.getString("filial"));
			modelLogin.setNbscrmgold(resultado.getString("nbscrmgold"));
			modelLogin.setAberturaficha(resultado.getString("aberturaficha"));
			modelLogin.setConsultaagenda(resultado.getString("consultaagenda"));
			modelLogin.setFiltrarficha(resultado.getString("filtrarficha"));
			modelLogin.setManutencaoficha(resultado.getString("manutencaoficha"));
			modelLogin.setTstdriveapre(resultado.getString("tstdriveapre"));
			modelLogin.setConsestoqplano(resultado.getString("consestoqplano"));
			modelLogin.setPedvenveicestoqvista(resultado.getString("pedvenveicestoqvista"));
			modelLogin.setPlanomensalfirm(resultado.getString("planomensalfirm"));
			modelLogin.setPedvenveicmodelo(resultado.getString("pedvenveicmodelo"));
			modelLogin.setReservaveicestoq(resultado.getString("reservaveicestoq"));
			modelLogin.setPedvensnefinanciam(resultado.getString("pedvensnefinanciam"));
			modelLogin.setFeibtb(resultado.getString("feibtb"));
			modelLogin.setFeifei(resultado.getString("feifei"));
			modelLogin.setFeisissmart(resultado.getString("feisissmart"));
			modelLogin.setFeipropvenda(resultado.getString("feipropvenda"));
			modelLogin.setFeiabrpropfinanc(resultado.getString("feiabrpropfinanc"));
			modelLogin.setFeiabrpropfinanc2(resultado.getString("feiabrpropfinanc2"));
			modelLogin.setFeiabrpropconsorcio(resultado.getString("feiabrpropconsorcio"));
			modelLogin.setFeicomoeditarprop(resultado.getString("feicomoeditarprop"));
			modelLogin.setFeisitpropbanca(resultado.getString("feisitpropbanca"));
			modelLogin.setFeiconfanalbanca(resultado.getString("feiconfanalbanca"));
			modelLogin.setAavcomologar(resultado.getString("aavcomologar"));
			modelLogin.setAavprocautoav(resultado.getString("aavprocautoav"));
			modelLogin.setFininfogerais(resultado.getString("fininfogerais"));
			modelLogin.setConintroconsorcio(resultado.getString("conintroconsorcio"));
			modelLogin.setUniintroprocvendas(resultado.getString("uniintroprocvendas"));
			modelLogin.setUnitreinamento1(resultado.getString("unitreinamento1"));
			modelLogin.setUnitreinamento2(resultado.getString("unitreinamento2"));
			modelLogin.setEntpassovenent(resultado.getString("entpassovenent"));
			modelLogin.setEntonetoyota(resultado.getString("entonetoyota"));
			modelLogin.setOneoquee(resultado.getString("oneoquee"));
			modelLogin.setOnepdfpergrespostas(resultado.getString("onepdfpergrespostas"));
			modelLogin.setSimqualificacao(resultado.getString("simqualificacao"));
			modelLogin.setSimtstapresent(resultado.getString("simtstapresent"));
			modelLogin.setSispdfprocvendas(resultado.getString("sispdfprocvendas"));
			modelLogin.setNbsvucadclie(resultado.getString("nbsvucadclie"));
			modelLogin.setNbsvucriaevesemcad(resultado.getString("nbsvucriaevesemcad"));
			modelLogin.setNbsvualtcadimpevento(resultado.getString("nbsvualtcadimpevento"));
			modelLogin.setNbsvuencerraevento(resultado.getString("nbsvuencerraevento"));
			modelLogin.setNbsvuemitirproposta(resultado.getString("nbsvuemitirproposta"));
			modelLogin.setNbsvuinsavafinanc(resultado.getString("nbsvuinsavafinanc"));
			modelLogin.setNbsvuprocessoentrega(resultado.getString("nbsvuprocessoentrega"));
			modelLogin.setNbsvuunicodoc(resultado.getString("nbsvuunicodoc"));
			modelLogin.setNbsvuunicoabertprocesso(resultado.getString("nbsvuunicoabertprocesso"));
			modelLogin.setNbsvuconsestoqnbs(resultado.getString("nbsvuconsestoqnbs"));
			modelLogin.setSimvuqualificacao(resultado.getString("simvuqualificacao"));
			modelLogin.setSimvutstapresenta(resultado.getString("simvutstapresenta"));
			modelLogin.setSimvupdfprocvendas(resultado.getString("simvupdfprocvendas"));
		}
		
		return modelLogin;
}

	public ModelLogin consultaUsuario(String nome) throws Exception {
		
		ModelLogin modelLogin = new ModelLogin();
		
		String sql = "select id, nome, perfil, filial, nbscrmgold, aberturaficha, consultaagenda, filtrarficha, manutencaoficha, tstdriveapre, consestoqplano, pedvenveicestoqvista, planomensalfirm, "
				+ "pedvenveicmodelo, reservaveicestoq, pedvensnefinanciam, feibtb, feifei, feisissmart, feipropvenda, feiabrpropfinanc, feiabrpropfinanc2, feiabrpropconsorcio, feicomoeditarprop, feisitpropbanca, "
				+ "feiconfanalbanca, aavcomologar, aavprocautoav, fininfogerais, conintroconsorcio, uniintroprocvendas, unitreinamento1, unitreinamento2, entpassovenent, entonetoyota, "
				+ "oneoquee, onepdfpergrespostas, simqualificacao, simtstapresent, sispdfprocvendas, simvuqualificacao, simvutstapresenta, simvupdfprocvendas, nbsvucadclie, nbsvucriaevesemcad, "
				+ "nbsvualtcadimpevento, nbsvuencerraevento, nbsvuemitirproposta, nbsvuinsavafinanc, nbsvuprocessoentrega, nbsvuunicodoc, nbsvuunicoabertprocesso, nbsvuconsestoqnbs from login WHERE upper(nome) LIKE upper(?);";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, nome);
		
		ResultSet resultado =  statement.executeQuery();
		
		while (resultado.next()) {
			modelLogin.setId(resultado.getLong("id"));
			modelLogin.setNome(resultado.getString("nome"));
			modelLogin.setPerfil(resultado.getString("perfil"));
			modelLogin.setFilial(resultado.getString("filial"));
			modelLogin.setNbscrmgold(resultado.getString("nbscrmgold"));
			modelLogin.setAberturaficha(resultado.getString("aberturaficha"));
			modelLogin.setConsultaagenda(resultado.getString("consultaagenda"));
			modelLogin.setFiltrarficha(resultado.getString("filtrarficha"));
			modelLogin.setManutencaoficha(resultado.getString("manutencaoficha"));
			modelLogin.setTstdriveapre(resultado.getString("tstdriveapre"));
			modelLogin.setConsestoqplano(resultado.getString("consestoqplano"));
			modelLogin.setPedvenveicestoqvista(resultado.getString("pedvenveicestoqvista"));
			modelLogin.setPlanomensalfirm(resultado.getString("planomensalfirm"));
			modelLogin.setPedvenveicmodelo(resultado.getString("pedvenveicmodelo"));
			modelLogin.setReservaveicestoq(resultado.getString("reservaveicestoq"));
			modelLogin.setPedvensnefinanciam(resultado.getString("pedvensnefinanciam"));
			modelLogin.setFeibtb(resultado.getString("feibtb"));
			modelLogin.setFeifei(resultado.getString("feifei"));
			modelLogin.setFeisissmart(resultado.getString("feisissmart"));
			modelLogin.setFeipropvenda(resultado.getString("feipropvenda"));
			modelLogin.setFeiabrpropfinanc(resultado.getString("feiabrpropfinanc"));
			modelLogin.setFeiabrpropfinanc2(resultado.getString("feiabrpropfinanc2"));
			modelLogin.setFeiabrpropconsorcio(resultado.getString("feiabrpropconsorcio"));
			modelLogin.setFeicomoeditarprop(resultado.getString("feicomoeditarprop"));
			modelLogin.setFeisitpropbanca(resultado.getString("feisitpropbanca"));
			modelLogin.setFeiconfanalbanca(resultado.getString("feiconfanalbanca"));
			modelLogin.setAavcomologar(resultado.getString("aavcomologar"));
			modelLogin.setAavprocautoav(resultado.getString("aavprocautoav"));
			modelLogin.setFininfogerais(resultado.getString("fininfogerais"));
			modelLogin.setConintroconsorcio(resultado.getString("conintroconsorcio"));
			modelLogin.setUniintroprocvendas(resultado.getString("uniintroprocvendas"));
			modelLogin.setUnitreinamento1(resultado.getString("unitreinamento1"));
			modelLogin.setUnitreinamento2(resultado.getString("unitreinamento2"));
			modelLogin.setEntpassovenent(resultado.getString("entpassovenent"));
			modelLogin.setEntonetoyota(resultado.getString("entonetoyota"));
			modelLogin.setOneoquee(resultado.getString("oneoquee"));
			modelLogin.setOnepdfpergrespostas(resultado.getString("onepdfpergrespostas"));
			modelLogin.setSimqualificacao(resultado.getString("simqualificacao"));
			modelLogin.setSimtstapresent(resultado.getString("simtstapresent"));
			modelLogin.setSispdfprocvendas(resultado.getString("sispdfprocvendas"));
			modelLogin.setNbsvucadclie(resultado.getString("nbsvucadclie"));
			modelLogin.setNbsvucriaevesemcad(resultado.getString("nbsvucriaevesemcad"));
			modelLogin.setNbsvualtcadimpevento(resultado.getString("nbsvualtcadimpevento"));
			modelLogin.setNbsvuencerraevento(resultado.getString("nbsvuencerraevento"));
			modelLogin.setNbsvuemitirproposta(resultado.getString("nbsvuemitirproposta"));
			modelLogin.setNbsvuinsavafinanc(resultado.getString("nbsvuinsavafinanc"));
			modelLogin.setNbsvuprocessoentrega(resultado.getString("nbsvuprocessoentrega"));
			modelLogin.setNbsvuunicodoc(resultado.getString("nbsvuunicodoc"));
			modelLogin.setNbsvuunicoabertprocesso(resultado.getString("nbsvuunicoabertprocesso"));
			modelLogin.setNbsvuconsestoqnbs(resultado.getString("nbsvuconsestoqnbs"));
			modelLogin.setSimvuqualificacao(resultado.getString("simvuqualificacao"));
			modelLogin.setSimvutstapresenta(resultado.getString("simvutstapresenta"));
			modelLogin.setSimvupdfprocvendas(resultado.getString("simvupdfprocvendas"));
		}
		
		return modelLogin;
}

	public ModelLogin consultaColaboradorID(String colaboradores_pai_id) {
		// TODO Auto-generated method stub
		return null;
	}
}
