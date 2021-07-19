package com.landingpage.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
  public List<Account> createAccount(@RequestBody Account account) {
    return service.createAccount(account);
  }
  
  @PostMapping("delete")
  public List<Account> deleteAccount(@RequestBody Account account) {
    return service.deleteAccount(account);
  }
  
  @PostMapping("update")
  public List<Account> updateAccount(@RequestBody Account account) {
    return service.updateAccount(account);
  }
  
  @PostMapping("edit")
  public List<Account> editAccount(@RequestBody Account account) {
    return service.updateAccount(account);
  }
  
}
