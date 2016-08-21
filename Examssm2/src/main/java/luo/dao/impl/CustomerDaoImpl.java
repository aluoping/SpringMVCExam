package luo.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import luo.dao.CustomerDao;
import luo.vo.Customer;

public class CustomerDaoImpl implements CustomerDao {
	private SqlSessionTemplate sqlSession;
	public void setSqlSession(SqlSessionTemplate sqlSession){
		this.sqlSession=sqlSession;
	}
	
	public Customer list(String first_name) {
		return sqlSession.selectOne("luo.vo.CustomerDao.selectByName",first_name);
	}

	public SqlSessionTemplate getSqlSession() {
		return sqlSession;
	}

	public List<Customer> list() {

		return sqlSession.selectList("luo.vo.CustomerDao.selectAll");
	}

}
