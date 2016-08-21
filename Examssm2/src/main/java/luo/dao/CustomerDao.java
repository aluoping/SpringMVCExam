package luo.dao;

import java.util.List;

import luo.vo.Customer;

public interface CustomerDao {
	public Customer list(String first_name);
	public List<Customer> list();
}
