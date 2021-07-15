package com.landingpage.entity;

public class News {

  private long id;
  private String tittle;
  private int likenumber;
  private int sharenumber;
  private int viewnumber;
  private String dateofcreat;
  private String dateofpost;
  private String status;
  private String action;
  
  
  public News() {}
  public News(long id, String tittle, int likenumber, int sharenumber, int viewnumber, String dateofcreat, String dateofpost,
      String status, String action) {
    this.id = id;
    this.tittle = tittle;
    this.likenumber = likenumber;
    this.sharenumber = sharenumber;
    this.viewnumber = viewnumber;
    this.dateofcreat = dateofcreat;
    this.dateofpost = dateofpost;
    this.status = status;
    this.action = action;
  }


  public long getId() {return id;}
  public void setId(long id) {this.id = id;}


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


  public String getAction() {return action;}
  public void setAction(String action) {this.action = action;}
  
}
