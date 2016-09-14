package com.javahash.spring.dao;

import java.util.List;

import com.javahash.spring.model.Book;

public interface BookDAO {
	public List<Book> list();
	
	public Book get(int id);
	
	public List<Book> findBookByTitle(String title);
	
	public void saveOrUpdate(Book book);
	
	public void deleteBook(Book book);
}
