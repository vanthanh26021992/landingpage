export class Account {
id: number;
name: string;
dateofbirth: Date;
phonenumber: string;
address: string;
email: string;
request: string;
usingpack: string;

  constructor(
    id: number, 
    name: string, 
    dateofbirth: Date, 
    phonenumber: string, 
    address: string, 
    email: string, 
    request: string, 
    usingpack: string) {

    this.id = id;
    this.name = name;
    this.dateofbirth = dateofbirth;
    this.phonenumber = phonenumber;
    this.address = address;
    this.email = email;
    this.request = request;
    this.usingpack = usingpack;
  }
}