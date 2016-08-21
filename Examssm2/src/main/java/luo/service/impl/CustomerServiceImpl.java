package luo.service.impl;


import java.util.List;

import luo.dao.CustomerDao;
import luo.service.CustomerService;
import luo.vo.Customer;

public class CustomerServiceImpl implements CustomerService{

	private CustomerDao customerDao;

	public Customer list(String first_name) {
		return customerDao.list(first_name);
	}

	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}

	public List<Customer> list() {
		return customerDao.list();
	}
	
}
