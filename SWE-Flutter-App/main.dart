import 'dart:io';  
void main() 
{ 
  person p = person(name: 'ahmed', age: '25');
  players salah = players(name: 'salah', age: '22');
  salah.printName();
  p.printName();
}

class person{
  
  String name;
  String age;

  person({required this.name,
    required this.age,});
  
  void printName(){
    print(name);
  }

}

class players extends person{
  players({required String name, required String age}) : super(name: name, age: age);



}