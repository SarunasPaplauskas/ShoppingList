package lt.shopping.list;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lt.shopping.list.entity.User;
import lt.shopping.list.services.UserService;

@Controller
public class LoginController {
	@Autowired
	private UserService userServiceImpl;
	
	@GetMapping("/login")
	public String login() {
		return "loginFile/login";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("user", authentication.getPrincipal());
		return "index";
	}
	
	@GetMapping("/createAcc")
	public String createAcc(Model model) {
		User user = new User();
		model.addAttribute("newUser", user);
		return "loginFile/createAccount";
	}
	
	@PostMapping("/createAcc")
	public String postCreateAcc(@Valid @ModelAttribute ("newUser") User user, BindingResult bindingResult, Model model, 
			@RequestParam ("confirmPassword") String confirmPassword) {
		/*
		 * Tikrinu ar slaptazodis sutampa su pakartotinai ivestu slaptazodziu
		 */
		if (!user.getPassword().equals(confirmPassword)){
			model.addAttribute("badPassword", "Mismatched Passwords");
			return "loginFile/createAccount";}
		/*
		 * Tikrinu ar validacijoje nera klaidu. UserId priskiriamas false jei toks email egzistuoja duomenu bazeje.
		 */
		if(!bindingResult.hasErrors()) {
			boolean tikrinimas = userServiceImpl.addUser(user);
			/*
			 * Jei email kartojasi pridedamas atributas ir uzkraunama create Account forma
			 */
			if (!tikrinimas) {
				model.addAttribute("emailExisting", "Email is Existing already");
				return "loginFile/createAccount";
				}
			return "redirect:/login";}
		return "loginFile/createAccount";
			}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){
			new SecurityContextLogoutHandler().logout(request, response, auth);}
		return "redirect:/login?logout=true";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder){
		StringTrimmerEditor stEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stEditor);
	}

}
