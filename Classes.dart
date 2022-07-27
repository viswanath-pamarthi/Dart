void main(List<String> args) {
  Person person1= Person("First Person");  
  person1.showOutput();

  Person person2=Person("Second person", 39);
  person2.showOutput();

  Person person3 = Person.guest();
  person3.showOutput();

  print(Person.retirementAge);

  final name ='Guest';//final or const outside of the class behave the same
  const age = 20;

  // name = "Guest2"; //throws error
  // age = 55; //throws error

}

//class
class Person {
  //late String name;
  late final name;// if the field value cannot be changed after initialization in constructur, type will be defined by inferred value
  late int age;
  static const int retirementAge = 60;//const will be assigned a value at complie time. const in a class should be preceded by static keyword

//Named constructur
Person.guest(){
  this.name = "Guest";
  this.age = 18;
}

  //if the names of the variables and the parameters are same then we can use the "this" keyword in parameters to auto initialize variables
  Person(this.name, [this.age =18]){   //This is default constructur
  }

  void showOutput(){
    print(name);
    print(age);
  }

}
