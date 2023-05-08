package br.com.cotiinformatica.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.cotiinformatica.entities.Usuario;
import br.com.cotiinformatica.repositories.UsuarioRepository;

@Controller
public class LoginUserController {

	@RequestMapping(value = "/")
	public ModelAndView login_user() {

		ModelAndView modelAndView = new ModelAndView("login_user");
		return modelAndView;
	}

	@RequestMapping(value = "/auth_user", method = RequestMethod.POST)
	public ModelAndView autenticarUsuario(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView("login");

		try {

			String email = request.getParameter("email");
			String password = request.getParameter("password");

			UsuarioRepository usuarioRepository = new UsuarioRepository();
			Usuario usuario = usuarioRepository.findByEmailAndSenha(email, password);

			if (usuario != null) {				
				modelAndView.setViewName("redirect:/admin/home");
			} 
			else {
				modelAndView.addObject("mensagem_erro", "Acesso negado. Usuário não encontrado.");
			}
		} catch (Exception e) {
			modelAndView.addObject("mensagem_erro", "Falha ao autenticar: " + e.getMessage());
		}
		return modelAndView;
	}

}
