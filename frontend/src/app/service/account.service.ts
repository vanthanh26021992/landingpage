import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';
import { catchError, retry } from 'rxjs/operators';
import { Constant } from '../constants';

  const httpOptions = {
    headers: new HttpHeaders({
      contentType:  'application/json',
      responseType: 'json',
    })
  };

  const headers = new HttpHeaders()
    .set("Content-Type", "application/json");

@Injectable({
  providedIn: 'root',
})
export class AccountService {

  constructor(private http: HttpClient) { }


  getAccounts() {
    let url = Constant.HOST + "/account/search";
    return this.http.get(url);
  }

  createAccount() {
    let url = Constant.HOST + "/account/create";
    return this.http.post(url, {address: "usrname", name: "password"}, httpOptions);
  }
}