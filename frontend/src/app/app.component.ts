import { Component } from '@angular/core';
import {MenuItem} from 'primeng/api';
import axios from 'axios';
//import { Http, Response } from '@angular/common/http';
//import 'rxjs/Rx';
import { HttpClient } from '@angular/common/http';
import { AccountService } from './service/account.service';



@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'frontend2';
  items: MenuItem[] = [];
  

  constructor(private http: HttpClient, private accountService: AccountService) { }


  ngOnInit() {
    this.items = [
        {
            label: 'File',
            items: [{
                    label: 'New', 
                    icon: 'pi pi-fw pi-plus',
                    items: [
                        {label: 'Project'},
                        {label: 'Other'},
                    ]
                },
                {label: 'Open'},
                {label: 'Quit'}
            ]
        },
        {
            label: 'Edit',
            icon: 'pi pi-fw pi-pencil',
            items: [
                {label: 'Delete', icon: 'pi pi-fw pi-trash'},
                {label: 'Refresh', icon: 'pi pi-fw pi-refresh'}
            ]
        }
    ];
}

  add(){
    console.log("add");
  }

  update(){
    console.log("update");
  }

  delete(){
    console.log("delete");
  }

  changePW(){
    console.log("changePW");
  }


  createAccount() {
    this.accountService.createAccount().subscribe(data => {
      console.log(data)
    }, error => {
      console.log(error)
    })
  }

  getAccounts() {
    this.accountService.getAccounts().subscribe(data => {
      console.log(data)
    }, error => {
      console.log(error)
    })
  }
}
