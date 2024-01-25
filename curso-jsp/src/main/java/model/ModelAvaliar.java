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
	private String aval31;
	private String aval32;
	private String aval33;
	
	private String aval41;
	private String aval42;
	private String aval43;
	
	private String aval51;
	private String aval52;
	private String aval53;
	
	private String aval61;
	private String aval62;
	private String aval63;
	
	private String aval71;
	private String aval72;
	private String aval73;
	
	private String aval8;
	
	private Double mediavaliacao;
	private Double mediavaliacao2;
	private Double mediavaliacao3;
	private Double mediavaliacao4;
	private Double mediavaliacao5;
	private Double mediavaliacao6;
	private Double mediavaliacao7;
	private Double mediavaliacao8;
	
	private ModelLogin colaboradores_pai_id;
	
	private ModelLogin colaboradores_cad_id;

	
	
	
	
	public String getAval41() {
		return aval41;
	}

	public void setAval41(String aval41) {
		this.aval41 = aval41;
	}

	public String getAval42() {
		return aval42;
	}

	public void setAval42(String aval42) {
		this.aval42 = aval42;
	}

	public String getAval43() {
		return aval43;
	}

	public void setAval43(String aval43) {
		this.aval43 = aval43;
	}

	public String getAval51() {
		return aval51;
	}

	public void setAval51(String aval51) {
		this.aval51 = aval51;
	}

	public String getAval52() {
		return aval52;
	}

	public void setAval52(String aval52) {
		this.aval52 = aval52;
	}

	public String getAval53() {
		return aval53;
	}

	public void setAval53(String aval53) {
		this.aval53 = aval53;
	}

	public String getAval61() {
		return aval61;
	}

	public void setAval61(String aval61) {
		this.aval61 = aval61;
	}

	public String getAval62() {
		return aval62;
	}

	public void setAval62(String aval62) {
		this.aval62 = aval62;
	}

	public String getAval63() {
		return aval63;
	}

	public void setAval63(String aval63) {
		this.aval63 = aval63;
	}

	public String getAval71() {
		return aval71;
	}

	public void setAval71(String aval71) {
		this.aval71 = aval71;
	}

	public String getAval72() {
		return aval72;
	}

	public void setAval72(String aval72) {
		this.aval72 = aval72;
	}

	public String getAval73() {
		return aval73;
	}

	public void setAval73(String aval73) {
		this.aval73 = aval73;
	}

	public String getAval8() {
		return aval8;
	}

	public void setAval8(String aval8) {
		this.aval8 = aval8;
	}

	public Double getMediavaliacao4() {
		return mediavaliacao4;
	}

	public void setMediavaliacao4(Double mediavaliacao4) {
		this.mediavaliacao4 = mediavaliacao4;
	}

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

	public String getAval31() {
		return aval31;
	}

	public void setAval31(String aval31) {
		this.aval31 = aval31;
	}

	public String getAval32() {
		return aval32;
	}

	public void setAval32(String aval32) {
		this.aval32 = aval32;
	}

	public String getAval33() {
		return aval33;
	}

	public void setAval33(String aval33) {
		this.aval33 = aval33;
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
