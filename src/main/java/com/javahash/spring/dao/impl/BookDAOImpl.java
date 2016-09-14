package com.javahash.spring.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javahash.spring.dao.BookDAO;
import com.javahash.spring.model.Book;

@Repository
public class BookDAOImpl implements BookDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public BookDAOImpl() {
	}
	
	public BookDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public List<Book> list() {
		@SuppressWarnings("unchecked")
		List<Book> bookList = (List<Book>) sessionFactory.getCurrentSession()
				.createCriteria(Book.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return bookList;
	}
	
	@Transactional
	public Book get(int id) {
		String hql = "from Book where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Book> bookList = (List<Book>) query.list();
		
		if (bookList != null && !bookList.isEmpty()) {
			return bookList.get(0);
		}
		
		return null;
	}
	
	@Transactional
	public List<Book> findBookByTitle(String title) {
		String hql;
		if ("".equals(title))
		{
		hql = "from Book";	
		}else
		{
		hql = "from Book where title like '%" + title + "%'";
		}
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		
		@SuppressWarnings("unchecked")
		List<Book> bookList = (List<Book>) query.list();
		
		return bookList;
	}
	
	@Transactional
	public void saveOrUpdate(Book book) {
		sessionFactory.getCurrentSession().saveOrUpdate(book);
	}
	
	@Transactional
	public void deleteBook(Book book) {
		sessionFactory.getCurrentSession().delete(book);
	}

}
