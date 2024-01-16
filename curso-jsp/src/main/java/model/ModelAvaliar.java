package model;

import java.io.Serializable;
import java.util.Objects;

public class ModelAvaliar implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String aval1;
	
	private ModelLogin colaboradores_pai_id;
	
	private ModelLogin colaboradores_cad_id;

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
