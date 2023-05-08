package br.com.cotiinformatica.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.cotiinformatica.entities.Usuario;
import br.com.cotiinformatica.repositories.UsuarioRepository;

@Controller
public class RegisterUserController {

	@RequestMapping(value = "/register_user")
	public ModelAndView register_user() {

		ModelAndView modelAndView = new ModelAndView("register_user");
		return modelAndView;
	}

	@RequestMapping(value = "/register_user", method = RequestMethod.POST)
	public ModelAndView cadastrarUsuario(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("register_user");
		try {
			Usuario usuario = new Usuario();

			usuario.setNome(request.getParameter("nome"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(request.getParameter("senha"));

			UsuarioRepository usuarioRepository = new UsuarioRepository();
			usuarioRepository.create(usuario);

			modelAndView.addObject("mensagem_sucesso", "Parabéns, sua conta de usuário foi criada com sucesso!");
		} catch (Exception e) {
			modelAndView.addObject("mensagem_erro", "Falha ao criar conta: " + e.getMessage());
		}
		return modelAndView;
	}
}