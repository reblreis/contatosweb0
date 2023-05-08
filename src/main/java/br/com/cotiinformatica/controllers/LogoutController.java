package br.com.cotiinformatica.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class LogoutController {

	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request) {

		request.getSession().removeAttribute("usuario");

		ModelAndView modelAndView = new ModelAndView("login");
		return modelAndView;
	}

}
