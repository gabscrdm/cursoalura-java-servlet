package br.com.gerenciador.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.gerenciador.modelo.Banco;
import br.com.gerenciador.modelo.Empresa;

public class AlteraEmpresa implements Acao {
	
	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nomeEmpresa = request.getParameter("nome");
		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);
		
		System.out.println("alterando empresa " + id);
		
		Banco banco = new Banco();
		Empresa empresa = banco.buscaEmpresaId(id);
		empresa.setNome(nomeEmpresa);
		
		return "redirect:entrada?acao=ListaEmpresas";
	}
		

}
