package model;

import java.io.Serializable;
import java.util.Objects;

public class ModelAvaliar implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String avaliacao;
	private String aval1;
	private String aval2;
	private String aval3;
	private String aval21;
	private String aval22;
	private String aval23;
	private Double mediavaliacao;
	private Double mediavaliacao2;
	
	private ModelLogin colaboradores_pai_id;
	
	private ModelLogin colaboradores_cad_id;

	
	
	
	
	public Double getMediavaliacao2() {
		return mediavaliacao2;
	}

	public void setMediavaliacao2(Double mediavaliacao2) {
		this.mediavaliacao2 = mediavaliacao2;
	}

	public String getAval21() {
		return aval21;
	}

	public void setAval21(String aval21) {
		this.aval21 = aval21;
	}

	public String getAval22() {
		return aval22;
	}

	public void setAval22(String aval22) {
		this.aval22 = aval22;
	}

	public String getAval23() {
		return aval23;
	}

	public void setAval23(String aval23) {
		this.aval23 = aval23;
	}

	public String getAval3() {
		return aval3;
	}

	public void setAval3(String aval3) {
		this.aval3 = aval3;
	}


	public Double getMediavaliacao() {
		return mediavaliacao;
	}

	public void setMediavaliacao(Double mediavaliacao) {
		this.mediavaliacao = mediavaliacao;
	}

	public String getAvaliacao() {
		return avaliacao;
	}

	public void setAvaliacao(String avaliacao) {
		this.avaliacao = avaliacao;
	}

	public String getAval2() {
		return aval2;
	}

	public void setAval2(String aval2) {
		this.aval2 = aval2;
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

	public String getAval1() {
		return aval1;
	}

	public void setAval1(String aval1) {
		this.aval1 = aval1;
	}

	public ModelLogin getColaboradores_pai_id() {
		return colaboradores_pai_id;
	}

	public void setColaboradores_pai_id(ModelLogin colaboradores_pai_id) {
		this.colaboradores_pai_id = colaboradores_pai_id;
	}
	
	public ModelLogin getColaboradores_cad_id() {
		return colaboradores_cad_id;
	}

	public void setColaboradores_cad_id(ModelLogin colaboradores_cad_id) {
		this.colaboradores_cad_id = colaboradores_cad_id;
	}

	@Override
	public int hashCode() {
		return Objects.hash(aval1);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ModelAvaliar other = (ModelAvaliar) obj;
		return Objects.equals(aval1, other.aval1);
	}
	
	

}
