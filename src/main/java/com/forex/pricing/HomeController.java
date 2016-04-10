package com.forex.pricing;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.forex.pricing.model.CountryCurrencyBean;
import com.forex.pricing.service.PricingService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private PricingService pricingService;
	
	public void setPricingService(PricingService pricingService) {
		this.pricingService = pricingService;
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		
		return "home";
	}
	
	@RequestMapping(value = "get-currency", method = RequestMethod.GET)
	public @ResponseBody List<CountryCurrencyBean> getCurrencyList(HttpServletRequest request, HttpServletResponse response) {
		
		List<CountryCurrencyBean> countryCurrencyList = new ArrayList<CountryCurrencyBean>();
		for (Map.Entry<String, BigDecimal> entry : pricingService.getCurrencyRates().entrySet())
		{
			CountryCurrencyBean countryCurrencyBean = new CountryCurrencyBean();
			countryCurrencyBean.setName(entry.getKey());
			countryCurrencyBean.setExchangeRate(entry.getValue());
			countryCurrencyList.add(countryCurrencyBean);
		}
		
		return countryCurrencyList;
	}
	
}
