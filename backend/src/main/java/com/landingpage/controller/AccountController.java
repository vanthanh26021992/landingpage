package com.landingpage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.landingpage.entity.Account;
import com.landingpage.service.AccountService;

@RestController
@RequestMapping("account")
public class AccountController {
  
  @Autowired
  private AccountService service;
  
  
  @PostMapping("create")
  public List<Account> createAccount(Account account) {
    return service.createAccount(account);
  }
  
  @PostMapping("remove")
  public List<Account> removeAccount(Account account) {
    return service.removeAccount(account);
  }
  
  @PostMapping("update")
  public List<Account> update(Account account) {
    return service.update(account);
  }
  
}
