package com.demo.service.impl;

import com.demo.service.BookService;
import com.demo.controller.Code;
import com.demo.dao.BookDao;
import com.demo.domain.Book;
import com.demo.exception.BusinessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
class BookServiceImpl implements BookService {
    @Autowired
    private BookDao bookDao;

    public boolean save(Book book) {
        return bookDao.save(book) > 0;
    }


    public boolean update(Book book) {
        return bookDao.update(book) > 0;
    }


    public boolean delete(Integer id) {
        return bookDao.delete(id) > 0;
    }

    public Book getById(Integer id) {
        if(id<0){
            throw new BusinessException( "请勿进行非法操作", Code.PROJECT_BUSSINESS_ERR);
        }
        return bookDao.getById(id);
    }


    public List<Book> getAll() {
        return bookDao.getAll();
    }
}
