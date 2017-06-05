package com.iceteaviet.service;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Genius Doan on 6/6/2017.
 */
public interface IBaseService<T, ID extends Serializable> {
    void save(T entity);
    void save(List<T> listEntity);
    void update(ID id, T newT);
    T findOne(ID id);
    List<T> findAll();
    List<T> findAll(List<ID> listId);
    long count();
    boolean exists(ID id);
    void delete(ID id);
    void delete(T entity);
    void delete(List<T> listEntity);
    void deleteAll();
}
