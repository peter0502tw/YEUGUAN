package yg.controller;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class Controller_Home {

	@Autowired
	ServletContext context;

	@RequestMapping(value = { "/", "/home", "/YEUGUAN", "/YEUGUAN/home", "/YEUGUAN/" })
	public ModelAndView home() {

		return new ModelAndView("index.jsp", "", "");
	}

	@RequestMapping(value = { "/yeuguan/products", "/products" })
	public ModelAndView products() {

		return new ModelAndView("products.jsp", "", "");
	}

	@RequestMapping(value = { "/yeuguan/products/en", "/products/en" })
	public ModelAndView productsen() {

		return new ModelAndView("productsen.jsp", "", "");
	}

	@RequestMapping(value = { "/yeuguan/contact", "/contact" })
	public ModelAndView contact() {

		return new ModelAndView("contact.jsp", "", "");
	}

	@RequestMapping(value = { "/yeuguan/contact/en", "/contact/en" })
	public ModelAndView contacten() {

		return new ModelAndView("contacten.jsp", "", "");
	}

	@RequestMapping(value = { "/en", "/home/en", "/yeuguan/en", "/yeuguan/home/en", "/yeuguan/en/" })
	public ModelAndView homeen() {

		return new ModelAndView("indexen.jsp", "", "");
	}

}
