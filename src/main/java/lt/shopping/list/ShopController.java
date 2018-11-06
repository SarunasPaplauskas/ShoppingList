package lt.shopping.list;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lt.shopping.list.entity.Product;
import lt.shopping.list.entity.Shop;
import lt.shopping.list.services.ProductService;
import lt.shopping.list.services.ShopService;

@Controller
public class ShopController {
	
	@Autowired
	private ShopService shopServiceImpl;
	
	@Autowired
	private ProductService productServiceImpl;

	@GetMapping ("/shopsList")
	public String shopList (Model model) {
		model.addAttribute("shopsList", shopServiceImpl.shopList());
		return "shopsList";
	}
	
	@GetMapping ("/historyShopsList")
	public String historyShopList (Model model) {
		model.addAttribute("shopsList", shopServiceImpl.shopList());
		return "historyShopsList";
	}
	
	@GetMapping("/historyByShop")
	public String historyByShop (@RequestParam ("shopId") Integer shopId, Model model) {
		model.addAttribute("ProductList", productServiceImpl.gethistoryByShop(shopId));
		return "historyByShop";
	}
	
	@GetMapping ("/addShop")
	public String addShop (Model model) {
		
		Shop shop = new Shop();
		model.addAttribute("newShop", shop);	
		return "addShop";
	}
	
	@PostMapping ("/addShop")
	public String addShop2 (@Valid @ModelAttribute ("newShop") Shop shop, BindingResult bindingResult) {
		if(!bindingResult.hasErrors()) {
		shopServiceImpl.addShop(shop);
		return "redirect:/shopsList";
		} else return "addShop";
	}
	
	@GetMapping("/deleteShop")
	public String deleteShop (HttpServletRequest request) {
		if (request.getParameter("shopId")!=null) {
		shopServiceImpl.deleteShop(Integer.parseInt(request.getParameter("shopId")));
		}
		return "redirect:/shopsList";
	}
	
	@GetMapping("/deleteShopHistory")
	public String deleteShopHistory (@RequestParam ("id") Integer id, HttpServletRequest request, Model model) {
		Product product = productServiceImpl.getProduct(id);
		productServiceImpl.deleteProduct(product);
		model.addAttribute("shopId", request.getParameter("shopId"));
		return "redirect:/historyByShop";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder){
		StringTrimmerEditor stEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stEditor);
	}


}
