package model;

import java.io.Serializable;
import java.sql.Date;

public class ModelLogin implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;
	private String nome;
	private String email;
	private String login;
	private String senha;
	private String setor;
	private String cpf;
	private Double mediavaliacao;
	private Double mediavaliacao2;
	private Double mediavaliacao3;
	private Double mediavaliacao4;
	private Double mediavaliacao5;
	private Double mediavaliacao6;
	private Double mediavaliacao7;
	private Double mediavaliacao8;
	private Date data;
	
	
	
		public Double getMediavaliacao5() {
		return mediavaliacao5;
	}

	public void setMediavaliacao5(Double mediavaliacao5) {
		this.mediavaliacao5 = mediavaliacao5;
	}

	public Double getMediavaliacao6() {
		return mediavaliacao6;
	}

	public void setMediavaliacao6(Double mediavaliacao6) {
		this.mediavaliacao6 = mediavaliacao6;
	}

	public Double getMediavaliacao7() {
		return mediavaliacao7;
	}

	public void setMediavaliacao7(Double mediavaliacao7) {
		this.mediavaliacao7 = mediavaliacao7;
	}

	public Double getMediavaliacao8() {
		return mediavaliacao8;
	}

	public void setMediavaliacao8(Double mediavaliacao8) {
		this.mediavaliacao8 = mediavaliacao8;
	}

		public Double getMediavaliacao4() {
		return mediavaliacao4;
	}

	public void setMediavaliacao4(Double mediavaliacao4) {
		this.mediavaliacao4 = mediavaliacao4;
	}

		public Double getMediavaliacao3() {
		return mediavaliacao3;
	}

	public void setMediavaliacao3(Double mediavaliacao3) {
		this.mediavaliacao3 = mediavaliacao3;
	}

		public Double getMediavaliacao2() {
		return mediavaliacao2;
	}

	public void setMediavaliacao2(Double mediavaliacao2) {
		this.mediavaliacao2 = mediavaliacao2;
	}

		public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

		public Double getMediavaliacao() {
		return mediavaliacao;
	}

	public void setMediavaliacao(Double mediavaliacao) {
		this.mediavaliacao = mediavaliacao;
	}

		public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

		public String getSetor() {
		return setor;
	}

	public void setSetor(String setor) {
		this.setor = setor;
	}

		private boolean useradmin;
	
	private String perfil;


	public String getPerfil() {
		return perfil;
	}

	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}

	public boolean getUseradmin() {
		return useradmin;
	}

	public void setUseradmin(boolean useradmin) {
		this.useradmin = useradmin;
	}

	public boolean isNovo() {
		if (this.id == null) {
			return true;
		}else if (this.id != null && this.id > 0) {
			return false;
		}
		
		return id == null;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
