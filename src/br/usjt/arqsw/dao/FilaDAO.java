package br.usjt.arqsw.dao;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.usjt.arqsw.entity.Fila;
@Repository
public class FilaDAO {
	@PersistenceContext
	EntityManager manager;
	
	public void criar(Fila fila ) {
		manager.persist(fila);
	}
	
	public void atualizar(Fila fila) {
		manager.merge(fila);
	}
	
	public void remover(Fila fila) {
		manager.remove(fila);
	}
		
	@SuppressWarnings("unchecked")
	public List<Fila> listarFilas() throws IOException {
		return manager.createQuery("select f from Fila f").getResultList();
	}

	public Fila carregar(int id) throws IOException {
		return manager.find(Fila.class, id);
	}
}
