import { Component } from '@angular/core';
import {MenuItem} from 'primeng/api';
import axios from 'axios';
//import { Http, Response } from '@angular/common/http';
//import 'rxjs/Rx';
import { HttpClient } from '@angular/common/http';
import { AccountService } from './service/account.service';
import { Account } from './entity/account';



@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'frontend2';
  accounts: any = [];
  account: any = {
    id:  null, 
    name: null, 
    dateofbirth: new Date(), 
    phonenumber: null, 
    address: null, 
    email: null, 
    request: null, 
    usingpack: null
  };
  

  constructor(private http: HttpClient, private accountService: AccountService) { }


  ngOnInit() {
    this.getAccounts();
  }

  add() {
    console.log("add");
  }

  updateAccount() {
    console.log(this.account);
    this.accountService.updateAccount(this.account).subscribe(data => {
      console.log(data);
      this.accounts = data;
    }, error => {
      console.log(error)
    })
  }

  editAccount(account) {
    this.account = account;
  }

  deleteAccount() {
    console.log(this.account);
    this.accountService.deleteAccount(this.account).subscribe(data => {
      console.log(data);
      this.accounts = data;
    }, error => {
      console.log(error)
    })
  }

  changePW() {
    console.log("changePW");
  }


  createAccount() {
    console.log(this.account);
    this.accountService.createAccount(this.account).subscribe(data => {
      console.log(data);
      this.accounts = data;
    }, error => {
      console.log(error)
    })
  }

  getAccounts() {
    this.accountService.getAccounts().subscribe(data => {
      console.log(data);
      this.accounts = data;
    }, error => {
      console.log(error)
    })
  }
}
