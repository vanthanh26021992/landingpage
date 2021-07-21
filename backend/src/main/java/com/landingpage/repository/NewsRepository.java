package com.landingpage.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.landingpage.entity.Account;
import com.landingpage.entity.News;

@Repository
public interface NewsRepository extends CrudRepository<News, Integer> {

}
