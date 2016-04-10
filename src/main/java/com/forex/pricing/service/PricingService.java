package com.forex.pricing.service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class PricingService {

	@Autowired
	public DataSource pricingDataSource;

	public Map<String, BigDecimal> getCurrencyRates() {
		JdbcTemplate jdbcTemplate = null;
		
		Map<String, BigDecimal> currencyListMap = new HashMap<String, BigDecimal>();
		try {
			jdbcTemplate = new JdbcTemplate(pricingDataSource);

			String sql = "SELECT * FROM dealcurrency";

			List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
			for (Map<String, Object> row : rows) {
				String lookupKey = row.get("id") + "|" + row.get("name");
				BigDecimal rate = (BigDecimal) row.get("exchange_rate");
				currencyListMap.put(row.get("name")+"", rate);
				System.out.println(lookupKey +"   :   "+rate);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return currencyListMap;
	}
}
