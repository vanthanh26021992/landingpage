package com.landingpage.entity;

public class Account {

  private String  username;
  private String  password;
  private int     age;
  
  public Account() { }
  
  public Account(String username, String password) {
    this.username = username;
    this.password = password;
  }
  
  public String getUsername() { return username; }
  public void setUsername(String username) { this.username = username; }
  
  public String getPassword() { return password; }
  public void setPassword(String password) { this.password = password; }

  public int getAge() {
    return age;
  }

  public void setAge(int age) {
    this.age = age;
  }
  
  
}
