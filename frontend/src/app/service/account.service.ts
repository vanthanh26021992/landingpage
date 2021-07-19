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

@Injectable({
  providedIn: 'root',
})
export class AccountService {

  constructor(private http: HttpClient) { }

  getAccounts() {
    let url = Constant.HOST + "/account/search";
    return this.http.get(url);
  }

  createAccount(account: any) {
    let url = Constant.HOST + "/account/create";
    return this.http.post(url, account, httpOptions);
  }

  updateAccount(account: any) {
    let url = Constant.HOST + "/account/update";
    return this.http.post(url, account, httpOptions);
  }

  deleteAccount(account: any) {
    let url = Constant.HOST + "/account/delete";
    return this.http.post(url, account, httpOptions);
  }

  editAccount(account: any) {
    let url = Constant.HOST + "/account/edit";
    return this.http.post(url, account, httpOptions);
  }
}