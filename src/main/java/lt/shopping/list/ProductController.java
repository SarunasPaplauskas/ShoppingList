package lt.shopping.list;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lt.shopping.list.entity.Product;
import lt.shopping.list.entity.Shop;
import lt.shopping.list.services.ProductService;
import lt.shopping.list.services.ShopService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productServiceImpl;
	@Autowired
	private ShopService shopServiceImpl;
	
	@GetMapping ("/addProduct")
	public String addProduct (Model model) {
		Product product = new Product();
		model.addAttribute("newProduct", product);
		model.addAttribute("shopsList", shopServiceImpl.shopList());
		return "addProduct";
	}
	
	@PostMapping("/addProduct")
	public String addProduct (@Valid @ModelAttribute ("newProduct") Product newProduct, BindingResult bindingResult, @RequestParam ("shopId") Integer shopId,
			@RequestParam ("typeId") Integer typeId, Model model) {
		if(!bindingResult.hasErrors()) {
			Shop shop = shopServiceImpl.getShopById(shopId);
		newProduct.setShop(shop);
		newProduct.setType(typeId);
		productServiceImpl.addProduct(newProduct);
		return "redirect:/productList";
		} else {
			model.addAttribute("shopsList", shopServiceImpl.shopList());
		return "addProduct";}
	}
	
	@GetMapping("/productList")
	public String productList (Model model) {
		model.addAttribute("ProductList", productServiceImpl.getProductList());
		return "productList";
	}
	
	@GetMapping("/shopsListToProduct")
	public String shopsListToProduct (Model model) {
		model.addAttribute("shopsList", shopServiceImpl.shopList());
		return "shopsListToProduct";
	}
	
	@GetMapping("/listByShop")
	public String listByShop (@RequestParam ("shopId") Integer shopId, Model model) {
		model.addAttribute("shopId", shopId);
		model.addAttribute("ProductList", productServiceImpl.getListByShop(shopId));
		return "listByShop";
	}
	
	@GetMapping("/delete")
	public String deleteProduct(@RequestParam ("id") Integer id) {
		Product product = productServiceImpl.getProduct(id);
		productServiceImpl.deleteProduct(product);
		return "redirect:/productList";
	}
	
	@GetMapping ("/historyList")
	public String historyList (Model model) {
		model.addAttribute("historyList", productServiceImpl.getHistoryList());
		return "historyList";
	}
	
	@GetMapping("/deleteHistory")
	public String deleteHistory (@RequestParam ("id") Integer id) {
		Product product = productServiceImpl.getProduct(id);
		productServiceImpl.deleteProduct(product);
		return "redirect:/historyList";
	}
	
	@GetMapping("/bought")
	public String bought (@RequestParam ("id") Integer id) {
		Product product = productServiceImpl.getProduct(id);
		Date date = new Date();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		product.setOnPurchase(dateFormat.format(date));
		productServiceImpl.updateProduct(product);
		System.out.println(product.getName());
		return "redirect:/productList";
	}
	
	@GetMapping("/boughtFromList")
	public String boughtFromList (@RequestParam ("id") Integer id, HttpServletRequest request, Model model) {		
		Product product = productServiceImpl.getProduct(id);
		Date date = new Date();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		product.setOnPurchase(dateFormat.format(date));
		productServiceImpl.updateProduct(product);
		model.addAttribute("shopId", request.getParameter("shopId"));
		return "redirect:/listByShop";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder){
		StringTrimmerEditor stEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stEditor);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

