import { Component } from '@angular/core';
import {MenubarModule} from 'primeng/menubar';
import {MenuItem} from 'primeng/api';
import axios from 'axios';
import {ButtonModule} from 'primeng/button';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'frontend2';
  items: MenuItem[] = [];


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
    axios.get('localhost:8080/account/search').then(data => {
      console.log(data)
    }, error => {
      console.log(error)
    })
  }
}
