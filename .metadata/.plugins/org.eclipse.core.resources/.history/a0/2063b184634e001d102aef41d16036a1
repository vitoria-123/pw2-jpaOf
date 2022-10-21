package br.com.etechoracio.jpa.entity;

import javax.persistence.*;

import lombok.*;

@Getter
@Setter
@Entity
@Table(name = "TBL_VEICULO")
public class Veiculo {

	@Id
	@Column(name = "ID_VEICULO")
	private Long id;

	@Column(name = "TX_FABRICANTE")
	private String fabricante;

	@Column(name = "TX_MODELO")
	private String modelo;

	@Column(name = "NR_ANO_FABRICACAO")
	private Integer anoFabricacao;

	@Column(name = "NR_ANO_MODELO")
	private Integer anoModelo;

	@Column(name = "VLR_PRECO")
	private Double valor;
	
	@ManyToOne
	@JoinColumn(name = "ID_PROPRIETARIO")
	private Proprietario proprietario;
}

