/**
 * 
 */
package com.minato.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Minato
 *
 */
@Controller
public class AppController {

	 @RequestMapping("/")
	 String home(ModelMap modal) {
	 modal.addAttribute("title", "Assignment First with AngularJS vs Bootstrap");
	 System.out.println("This is Home");
	 return "index";
	 }

	// @RequestMapping("book")
	// String homeBook(ModelMap modal) {
	// modal.addAttribute("title", "Display Books");
	// return "indexBook";
	// }

//	@RequestMapping("/")
//	String home() {
//		System.out.println("This is Home");
//		return "home";
//	}

	@RequestMapping("book")
	String displayBook() {
		System.out.println("Load Book!");
		return "book";
	}

	@RequestMapping("reader")
	String displayReader() {
		System.out.println("Load Reader");
		return "reader";
	}

	@RequestMapping("borrowing")
	String displayBorrowing() {
		System.out.println("Load Borrowing");
		return "borrowing";
	}

	@RequestMapping("/display/{page}")
	String partialHandler(@PathVariable("page") final String page) {
		return page;
	}

}
