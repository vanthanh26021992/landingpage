package com.landingpage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landingpage.entity.Account;
import com.landingpage.repository.AccountRepository;

@Service
public class AccountService {
  
  @Autowired
  private AccountRepository accountRepository;

  public List<Account> getAccounts() {
    return (List<Account>) accountRepository.findAll();
  }

  public List<Account> createAccount(Account account) {
    accountRepository.save(account);
    return getAccounts();
  }
  
  public List<Account> deleteAccount(Account account) {
    accountRepository.deleteById(account.getId());
    return getAccounts();
  }
  
  public List<Account> updateAccount(Account account) {
    accountRepository.save(account);
    return getAccounts();
  }
}
