package com.landingpage.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("account")
public class AccountController {

  
  @GetMapping("search")
  public String getAccount() {
    return "The account is todo";
  }
}
