package com.landingpage.entity;

import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Entity;

@Entity
public class Account implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private int id;
  
  private String  name;
  private String  dateofbirth;
  private String  phonenumber;
  private String  address;
  private String  email;
  private String  request;
  private String  usingpack;
  
  
  
  public Account() {}
  public Account(int id, String name, String dateofbirth, String phonenumber, String address, String email, String request, String usingpack) {
    this.id = id;
    this.name = name;
    this.dateofbirth = dateofbirth;
    this.phonenumber = phonenumber;
    this.address = address;
    this.email = email;
    this.request = request;
    this.usingpack = usingpack;
  }
  
  
  public int getId() {return id;}
  public void setId(int id) {this.id = id;}
  
  public String getName() {return name;}
  public void setName(String name) {this.name = name;}
  public String getDateofbirth() {return dateofbirth;}
  public void setDateofbirth(String dateofbirth) {this.dateofbirth = dateofbirth;}
  public String getPhonenumber() {return phonenumber;}
  public void setPhonenumber(String phonenumber) {this.phonenumber = phonenumber;}
  public String getAddress() {return address;}
  public void setAddress(String address) {this.address = address;}
  public String getEmail() {return email;}
  public void setEmail(String email) {this.email = email;}
  public String getRequest() {return request;}
  public void setRequest(String request) {this.request = request;}
  public String getUsingpack() {return usingpack;}
  public void setUsingpack(String usingpack) {this.usingpack = usingpack;}
  
}
