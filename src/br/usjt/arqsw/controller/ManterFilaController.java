package br.usjt.arqsw.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.usjt.arqsw.entity.Fila;
import br.usjt.arqsw.service.FilaService;

@Transactional
@Controller
public class ManterFilaController {

	private FilaService filaService;
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	public ManterFilaController(FilaService fs) {
		filaService = fs;
	}
	
	@RequestMapping("/incluir_fila")
	public String incluirFila(@Valid Fila fila, BindingResult result, Model model, @RequestParam("file") 
	MultipartFile file) {
		try {
			filaService.criar(fila);
			filaService.gravarImagem(servletContext, fila, file);
			return "redirect:listar_chamados_exibir";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("Erro", e);
		}
		return "Erro";
	}
	
	@RequestMapping("/atualizar_fila")
	private String atualizarFila(Fila fila, Model model, @RequestParam("file") MultipartFile file) {
		try {
			filaService.atualizar(fila);
			filaService.gravarImagem(servletContext, fila, file);
			return "redirect:listar_chamados_exibir";
		}catch (IOException e) {
			e.printStackTrace();
			model.addAttribute("Erro", e);
		}
		return "Erro";
	}
	
	@RequestMapping("/incluir_fila")
	public String deletarFila(@Valid Fila fila, BindingResult result, Model model, @RequestParam("file") 
	MultipartFile file) {
		try {
			filaService.remover(fila);
			filaService.gravarImagem(servletContext, fila, file);
			return "redirect:listar_chamados_exibir";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("Erro", e);
		}
		return "Erro";
	}
}
