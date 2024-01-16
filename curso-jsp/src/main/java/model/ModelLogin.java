package model;

import java.io.Serializable;

public class ModelLogin implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;
	private String nome;
	private String email;
	private String login;
	private String senha;
	private String setor;
	private String cpf;
	
	
	
	
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
