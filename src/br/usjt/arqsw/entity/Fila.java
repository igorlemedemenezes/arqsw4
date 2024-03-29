package br.usjt.arqsw.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
@Entity
public class Fila {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name="id_fila")
	private int id;
	
	@NotNull
	@Size(max=45)
	@Column(name="nm_fila")
	private String nome;
	
	@Column(name="caminho_figura")
	private String caminhoImagem;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCaminhoImagem() {
		return caminhoImagem;
	}
	public void setCaminhoImagem(String caminhoImagem) {
		this.caminhoImagem = caminhoImagem;
	}
	@Override
	public String toString() {
		return "Fila [id=" + id + ", nome=" + nome + "]";
	}
}
