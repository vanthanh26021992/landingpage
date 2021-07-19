package com.landingpage.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.landingpage.entity.Account;

@Service
public class AccountService {

  public List<Account> getAccount() {
    List<Account> accounts = new ArrayList<>();
    accounts.add(new Account(123, "tvthanh", "01-01-2000", "0977097097", "thanh@gmail.com", "Hanoi", "Dang ky", "v100"));
    accounts.add(new Account(125, "tvthanh", "01-01-2000", "0977097097", "thanh@gmail.com", "Hanoi", "Dang ky", "v100"));
    return accounts;
  }

  public List<Account> createAccount(Account account) {
    List<Account> accounts = new ArrayList<>();
    accounts.add(new Account(123, "tvthanh", "01-01-2000", "0977097097", "thanh@gmail.com", "Hanoi", "Dang ky", "v100"));
    accounts.add(new Account(125, "hieu", "01-01-2000", "0977097097", "hieu@gmail.com", "Hanoi", "Dang ky", "v100"));
    accounts.add(account);
    return accounts;
  }
  
  public List<Account> deleteAccount(Account account) {
    List<Account> accounts = new ArrayList<>();
    List<Account> deleteaccounts = new ArrayList<>();
    accounts.add(new Account(123, "tvthanh", "01-01-2000", "0977097097", "thanh@gmail.com", "Hanoi", "Dang ky", "v100"));
    accounts.add(new Account(125, "hieu", "01-01-2000", "0977097097", "hieu@gmail.com", "Hanoi", "Dang ky", "v100"));
    for(Account existedAccount : accounts ) {
      if(existedAccount.getId() == account.getId()) {
        deleteaccounts.add(existedAccount);
      }
    }
    accounts.removeAll(deleteaccounts);
    return accounts;
  }
  
  public List<Account> editAccount(Account account) {
    List<Account> accounts = new ArrayList<>();
    accounts.add(new Account(123, "tvthanh", "01-01-2000", "0977097097", "thanh@gmail.com", "Hanoi", "Dang ky", "v100"));
    for(Account existedAccount : accounts ) {
      if(existedAccount.getId() == account.getId()) {
        existedAccount.setName(account.getName());
        existedAccount.setDateofbirth(account.getDateofbirth());
        existedAccount.setPhonenumber(account.getPhonenumber());
        existedAccount.setAddress(account.getAddress());
        existedAccount.setEmail(account.getEmail());
        existedAccount.setRequest(account.getRequest());
        existedAccount.setUsingpack(account.getUsingpack());
      }
    }
    return accounts;
  }
  
  public List<Account> updateAccount(Account account) {
    List<Account> accounts = new ArrayList<>();
    accounts.add(new Account(123, "tvthanh", "01-01-2000", "0977097097", "thanh@gmail.com", "Hanoi", "Dang ky", "v100"));
    accounts.add(new Account(125, "hieu", "01-01-2000", "0977097097", "hieu@gmail.com", "Hanoi", "Dang ky", "v100"));
    for(Account existedAccount : accounts ) {
      if(existedAccount.getId() == account.getId()) {
        existedAccount.setName(account.getName());
        existedAccount.setDateofbirth(account.getDateofbirth());
        existedAccount.setPhonenumber(account.getPhonenumber());
        existedAccount.setAddress(account.getAddress());
        existedAccount.setEmail(account.getEmail());
        existedAccount.setRequest(account.getRequest());
        existedAccount.setUsingpack(account.getUsingpack());
      }
    }
    return accounts;
  }
  
  
  
}
