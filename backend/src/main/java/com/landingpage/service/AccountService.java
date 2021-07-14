package com.landingpage.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.landingpage.entity.Account;

@Service
public class AccountService {

  public List<Account> getAccount() {
    List<Account> accounts = new ArrayList<>();
    accounts.add(new Account("tvthanh", "tvthanh"));
    accounts.add(new Account("dohieu", "dohieu"));
    return accounts;
  }
  
  public List<Account> createAccount(Account account) {
    List<Account> accounts = new ArrayList<>();
    accounts.add(account);
    return accounts;
  }
  
  public List<Account> removeAccount(Account account) {
    List<Account> accounts = new ArrayList<>();
    accounts.add(new Account("tvthanh", "tvthanh"));
    accounts.add(new Account("dohieu", "dohieu"));
    for (int i = 0; i < accounts.size(); i++) {
      if(accounts.get(i).getUsername().equals(account.getUsername())) {
        accounts.remove(i);
      }
    }
    return accounts;
  }
  
  public List<Account> changePassword(Account account) {
    List<Account> accounts = new ArrayList<>();
    accounts.add(new Account("tvthanh", "tvthanh"));
    accounts.add(new Account("dohieu", "dohieu"));
    for(Account existedAccount : accounts ) {
      if(existedAccount.getUsername().equals(account.getUsername())) {
        existedAccount.setPassword(account.getPassword());
      }
    }
    return accounts;
  }
  
  public String update(Account account) {
    List<Account> accounts = new ArrayList<>();
    accounts.add(new Account("tvthanh", "tvthanh"));
    accounts.add(new Account("dohieu", "dohieu"));
    for(Account existedAccount : accounts ) {
      if(existedAccount.getUsername().equals(account.getUsername())) {
        existedAccount.setPassword(account.getPassword());
      }
    } 
    return "Updation is success";
  }
}
