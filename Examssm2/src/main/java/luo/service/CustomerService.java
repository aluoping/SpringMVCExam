package luo.service;

import java.util.List;

import luo.vo.Customer;

public interface CustomerService {
	public Customer list(String first_name);
	public List<Customer> list();
}
