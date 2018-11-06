package lt.shopping.list;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lt.shopping.list.services.RoleService;
import lt.shopping.list.services.UserService;

@Controller
@RequestMapping ("/admin")
public class AdminController {
	
	@Autowired
	private UserService userServiceImpl;
	
	@Autowired
	private RoleService roleServiceImpl;
	
	@GetMapping ("/usersList")
	public String usersList (Model model) {
		model.addAttribute("usersList", userServiceImpl.usersList());
		model.addAttribute("rolesList", roleServiceImpl.rolesList());
		return "usersList";
	}
	
	@GetMapping("/saveChanges")
	public String saveChanges (HttpServletRequest request, Model model) {
		Integer userId = Integer.parseInt(request.getParameter("userId"));
		Integer roleId = Integer.parseInt(request.getParameter("role"));
		if(userServiceImpl.updateUser(userId, roleId)==false) {
			model.addAttribute("hasRole", "The User already has Chosed Role");
			model.addAttribute("usersList", userServiceImpl.usersList());
			model.addAttribute("rolesList", roleServiceImpl.rolesList());
			return "usersList";
		}
		return "redirect:/admin/usersList";
	}
	
	
	
	
	
	
	
}
