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
  
  @GetMapping("search")
  public List<Account> getAccount() {
    return service.getAccount();
  }
  
  @PostMapping("create")
  public List<Account> createAccount(Account account) {
    return service.createAccount(account);
  }
  
  @PostMapping("delete")
  public List<Account> removeAccount(Account account) {
    return service.removeAccount(account);
  }
  
  @PostMapping("change-password")
  public List<Account> changePassword(Account account) {
    return service.changePassword(account);
  }
  
  @PostMapping("update")
  public String update(Account account) {
    return service.update(account);
  }
  
}
