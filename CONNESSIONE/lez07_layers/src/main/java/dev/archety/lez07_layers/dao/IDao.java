package dev.archety.lez07_layers.dao;

import java.util.List;

public interface IDao<T> {

	List<T> getAll();
	T getById(int id);
	boolean insert(T t);
	boolean delete(int id);
	boolean update(T t);
	
}