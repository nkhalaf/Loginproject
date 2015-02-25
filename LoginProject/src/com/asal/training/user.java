package com.asal.training;

public class user {
String name ;
String adress ; 
int id ; 
String phone ;
String password ;
String gender ; 
String bDay ;

public user(String name ,String  adress , int id ,String phone ,String password , String gender ,String bDay){
	this.name =  name ; 
     this.adress =adress ;
     this.id = id ; 
     this.phone= phone ;
     this.password  = password ;
      this.gender = gender  ;
      this.bDay = bDay;
	
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getAdress() {
	return adress;
}

public void setAdress(String adress) {
	this.adress = adress;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getbDay() {
	return bDay;
}

public void setbDay(String bDay) {
	this.bDay = bDay;
}
}