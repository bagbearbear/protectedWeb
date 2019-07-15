package org.protectedog.web.product;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.domain.Product;
import org.protectedog.service.product.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

//==> ȸ������ Controller
@Controller
@RequestMapping("/product/*")
public class ProductController {

	/// Field
	@Autowired
	@Qualifier("productServiceImpl")
	private ProductService productService;

	// setter Method ���� ����

	public ProductController() {
		System.out.println(this.getClass());
	}

	// ==> classpath:config/common.properties ,
	// classpath:config/commonservice.xml ���� �Ұ�
	// ==> �Ʒ��� �ΰ��� �ּ��� Ǯ�� �ǹ̸� Ȯ�� �Ұ�
	@Value("#{commonProperties['pageUnit']}")
	// @Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	// @Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;


	@RequestMapping(value="addProduct", method=RequestMethod.GET )
	public String addProduct() throws Exception{
		System.out.println("/product/addProduct : GET");
		
		return "/shop/product/addProduct.jsp";
	}
	
	@RequestMapping(value = "addProduct", method=RequestMethod.POST)
	public String addProduct( @ModelAttribute("product") Product product, 
			HttpServletRequest request, @RequestParam("fileName") MultipartFile mfile) throws Exception{
	
		productService.addProduct(product);
		
		return "redirect:/shop/product/listProduct?menu=manage";
	}
	@RequestMapping(value ="getProduct", method=RequestMethod.GET)
	public String getProduct(@RequestParam("prodNo") int prodNo, Model model) throws Exception {

		System.out.println("/product/getProduct : get");
		// Business Logic
		System.out.println(prodNo);
		Product product = productService.getProduct(prodNo);
		// Model �� View ����
		

		model.addAttribute("product", product);

		return "forward:/shop/product/getProduct.jsp";
	}

	@RequestMapping(value="updateProduct", method=RequestMethod.GET)
	public String updateProduct(@RequestParam("prodNo") String prodNo, Model model) throws Exception{
		System.out.println("/product/updateProduct : get");
		
		Product product = productService.getProduct(Integer.parseInt(prodNo));
		
		
		model.addAttribute("product", product);
		
		return "forward:/shop/product/updateProduct.jsp";
	}
		
	@RequestMapping(value="updateProduct", method=RequestMethod.POST)
	public String updateProduct( @ModelAttribute("product") Product product, 
			HttpServletRequest request) throws Exception{

		System.out.println("/shop/product/updateProduct : POST");
		//Business Logic
		
		productService.updateProduct(product);
		
		return "/shop/product/getProduct.jsp";
	
	}

	@RequestMapping( value="listProduct")
	public String listProduct(@ModelAttribute("search") Search search, @RequestParam("menu") String menu,
			HttpServletRequest request, Model model) throws Exception {

		System.out.println("/listProduct get");
	
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		// Business logic ����
		Map<String, Object> map = productService.listProduct(search);

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);
		System.out.println(resultPage);

		// Model �� View ����
		ModelAndView modelAndView = new ModelAndView();
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		
		
		
		modelAndView.setViewName("forward:/product/listProduct.jsp");

		return "forward:/product/listProduct.jsp";
	}
	
	@RequestMapping( value="listAdminProduct")
	public String listAdminProduct(@ModelAttribute("search") Search search, @RequestParam("menu") String menu,
			HttpServletRequest request, Model model) throws Exception {

		System.out.println("/listProduct get");
	
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		// Business logic ����
		Map<String, Object> map = productService.listProduct(search);

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);
		System.out.println(resultPage);

		// Model �� View ����
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		

		return "forward:/shop/product/listAdminProduct.jsp";
	}
}
