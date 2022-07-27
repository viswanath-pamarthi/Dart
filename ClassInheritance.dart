
void main(){
  var car1 = Car('Accord', 2014, 150000);
  Vehicle vehicle = Car("lunar", 3030, 40000);
  vehicle.overrideCheck();
  car1.showoutput();
  car1.overrideCheck();

  //property check
  print("_________________");
  print(car1.title);
  car1.title ="Beetle 3000";
  print(car1.title);
}


class Vehicle{
  String model;//implicit property
  int year;
  
  Vehicle(this.model, this.year){
    print(this.model);
    print(this.year);
  }

  String get title => "$model $year";//Get property
  set title(String value){//set property
    var val = value.split(' ');
    model = val[0];
    year = int.parse(val[1]);
  }
  void showoutput(){
    print(model);
    print(year);
  }

  void overrideCheck(){
    print("From vehicle class");
  }
}

class Car extends Vehicle{
  double price;

  Car(String model, int year, this.price) : super(model, year){
  }

void showoutput(){
  super.showoutput();
  print(this.price);
}
@override
 void overrideCheck(){
  //  super.overrideCheck();
   print("From car class");
 }
  
}