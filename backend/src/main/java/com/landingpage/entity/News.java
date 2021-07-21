package com.landingpage.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class News {
  
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private int id;
  private String tittle;
  private int likenumber;
  private int sharenumber;
  private int viewnumber;
  private String dateofcreat;
  private String dateofpost;
  private String status;
  
  
  public News() {}
  public News(int id, String tittle, int likenumber, int sharenumber, int viewnumber, String dateofcreat, String dateofpost,
      String status) {
    this.id = id;
    this.tittle = tittle;
    this.likenumber = likenumber;
    this.sharenumber = sharenumber;
    this.viewnumber = viewnumber;
    this.dateofcreat = dateofcreat;
    this.dateofpost = dateofpost;
    this.status = status;
  }


  public int getId() {return id;}
  public void setId(int id) {this.id = id;}


  public String getTittle() {return tittle;}
  public void setTittle(String tittle) {this.tittle = tittle;}


  public int getLikenumber() {return likenumber;}
  public void setLikenumber(int likenumber) {this.likenumber = likenumber;}


  public int getSharenumber() {return sharenumber;}
  public void setSharenumber(int sharenumber) {this.sharenumber = sharenumber;}


  public int getViewnumber() {return viewnumber;}
  public void setViewnumber(int viewnumber) {this.viewnumber = viewnumber;}


  public String getDateofcreat() {return dateofcreat;}
  public void setDateofcreat(String dateofcreat) {this.dateofcreat = dateofcreat;}


  public String getDateofpost() {return dateofpost;}
  public void setDateofpost(String dateofpost) {this.dateofpost = dateofpost;}


  public String getStatus() {return status;}
  public void setStatus(String status) {this.status = status;}
  
}
