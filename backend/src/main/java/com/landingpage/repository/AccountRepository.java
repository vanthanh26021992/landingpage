package com.landingpage.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.landingpage.entity.Account;

@Repository
public interface AccountRepository extends CrudRepository<Account, Integer> {

}
