package com.forex.pricing.model;

import java.io.Serializable;
import java.math.BigDecimal;

public class CountryCurrencyBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1847141110508159800L;

	private String name;
	private BigDecimal exchangeRate;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public BigDecimal getExchangeRate() {
		return exchangeRate;
	}
	public void setExchangeRate(BigDecimal exchangeRate) {
		this.exchangeRate = exchangeRate;
	}
	
}
