import 'dart:core';//Imported automatically in every dart program - all core functionality is in this package
import 'dart:io';

void main(List<String> args) {
  /*var firstName = 'firstName';//firstName is inferred based on value assigned
  String lastName = 'LastName';
print(firstName + '' + lastName);

//dart:io - example
stdout.writeln('What is your name: ?');
String? name = stdin.readLineSync();
print('My name is $name');//String interpolation - $name

//Comments
//In-line comment

/*
Block comment
*/

///Documentantion comment

//Basic data types
/* int, double, String, bool, 
dynamic - type of variable is known at run time
*/

int amount1 = 100;
var amount2 = 200;
print('Amount1: $amount1 | Amount2: $amount2 \n');

double dAmount1 = 100.11;
var damount2 = 200.22;
print('dAmount1: $dAmount1 | dAmount2: $damount2 \n');

String name1 = 'name1';
var name2 = 'name2';
print('My name is: $name1 $name2 \n');

bool isItTrue1 = true;
var isITTrue2 = false;
print('isItTrue: $isItTrue1 | isItTrue2: $isITTrue2');

dynamic weakVariable =100;
print('weakVariable 1: $weakVariable \n');

weakVariable = 'Dart Programming';
print('WeakVariable 2: $weakVariable');

weakVariable = null;
print(weakVariable);

//Strings
var string1 = 'Single quotes work well for string literals.';
var string2 = "Double quotes work just as well.";
var string3 = 'It\'s easy to escape the string delimiter.';
var string4 = "it's even easier to use the other delimiter.";

print(string1);
print(string2);
print(string3);
print(string4);
print(' ');

//Raw String - if there is a special character like \n is not evaluated and is considered part of string
var rawString = r'In a raw string, not even \n gets special treatment.';
print(rawString);

//string interpolation
var age = 35;
var interpolatedString ='My age is: $age';
print(interpolatedString);

 //multiline string
var multiLineString1 = '''
you can create
multi-line strings with single quotes like this.
''';
var multiLineString2 = """This is also a 
multi-line string
created with double quotes.""";
print(multiLineString1);
print(multiLineString2);

//type conversion or type casting
//String to Int
var stringOne = int.parse('1');//
assert(stringOne == 1);

var tryParseOne = int.tryParse('2');
if(tryParseOne != null)
  print(tryParseOne);

//String to double
var stringDoubleOne = double.parse('1.1');
assert(stringDoubleOne== 1.1);

//int -> String
String oneAsString = 1.toString();
assert(oneAsString == '1');

//double -> string
String piAsString = 3.14159.toStringAsFixed(2);
//Production code ignores the assert() call. During development, on the other hand, 
//assert(condition) throws an exception if condition is false. 
assert(piAsString == '3.14');


/// Constant
const intConstant = 1; //int constant, by  type inference compiler will make this variable as integer
const boolConstant = true;// bool constant
const stringConstant ='a constant string';//string constant
print(intConstant);
print(boolConstant);
print(stringConstant);

//Fetch the type of variable
print(intConstant.runtimeType);
print(boolConstant.runtimeType);
print(stringConstant.runtimeType);

///Default values
///Uninitialized variables that have a nullable type have an initial value of null. 
///(If you haven’t opted into null safety, then every variable has a nullable type.) Even variables with numeric types are initially null, 
///because mbers—like everything else in Dart—are objects.
int? num;//no value assigned
print(num);// null is printed

///Operators
int number = 10+22;
number = number -2;
print(number);

number = number % 5;
print(number);

//relational ==, !=, >=, <=
if(number == 0){
  print('Zero');
}

number = 100;
number *= 2;//short hand operator, equivalent to number = number * 2;
print(number);

//unary operator
++number;
number++;
number += 1;
number -= 1;
print(number);

//logical && and logical ||
if(number > 200 && number < 203){
  print('200 to 202');
}

// != Not Equal
if(number != 100){
  print('num is not equal to 100');
}

///Null aware operator
/// (?.), (??), (??=)
var numberClassObject;
numberClassObject = NumberClass();
var num3;
num3 = numberClassObject?.num ?? 1;//if numberClassObject is null or .num is null then default value of 1 will be assigned to num3
print(num3);

print(num3??=3);//if num3 is null then 3 is assigned to num3


///Terinary operator
int x = 100;
var result = x % 2 ==0?'Even':'Odd' ;
print(result);


///Type test
var numX = 100.00;

if(numX is int){
  print('integer');
}else
  print('not a integer');

///Conditional Statements

if(numX %2 == 0){
  print('Even');
}
else if (numX %3 == 0){
  print('Odd');
}
else{
  print('Confused');
}
int switchNumber =20;
switch(switchNumber){
  case 0:
  print('Even');
  break;
  case 1:
    print('Odd');
    break;
  default:
  print('Confused');
}

///Loops
 
 var numbers = [1,2,3];
 //For loop
 for(var i = 0; i<numbers.length; ++i){
   print(numbers[i]);
 }

//For-in loop

print("-----For-in loop------");
for(var num in numbers){
 print(num);
}

//For each loop
print("-----For each loop------");
numbers.forEach((element) //for each takes a function as parameter
{print(element);
});
numbers.forEach((num)=> print(num));

//while loop
int number22 = 22;
while(number22 > 0){
  print(number22);
  number22 -= 1;
}

number22 = 23;
//do while loop
do{
  print(number22);
  number22 -= 1;
}while(number22 > 0);

//Break and continue
for(var i = 0; i<10; ++i){
   if(i % 2 == 0) continue;//skip and continue to next value of i

   if(i ==7 )
    break;// break the loop
   print("Odd: $i");
 }

///Collections - List, Set , Map

List names = ['Jack', 'Jill'];//inferred In some programming laguages this is called array, but in Dart it is called List
print(names.length);//length of the list
print(names[0]);//0 based index lists

for(var name in names){
  print(name);
}
var names1 = ['Jack', 'Jill'];//inferred by compiler as List<String>
var names2 = ['Jack', 'Jill', 10, 100.1];//can have mixed values in the list, it is inferred as List<object>
List<String> names3 = ['Jack', 'Jill']; //In order to allow only string values, we need to specify the type String.
names3[1]="Mark";
// The above List is mutable, we can change the values of the list, in order to prevent editing then make the list const
List<String> names4 = const ['Jack', 'Jill']; 
//names4[1]="Mark";//throws a run time exception

var names5 = names3; //in this assignment, names3 list is not copied to names5, names5 is a reference of names3 list. if modifying a names5 list will modify the value of names3 list
names5[1] = 'Jim'; 
print("Names3 List ---- index 1  value - "+names3[1]);//Prints Jim 

///Spread Operator ...
// we can use spread operator to clone the List
names5 = [...names3];
names5[1] = 'Jim007'; 
print("Names3 spread operator - List ---- index 1  value - "+names3[1]);//Prints Jim 
*/
/// Set is a unorder collection of unique items
var halogens ={'floor', 'sky', 'water'};
for(var item in halogens){
  print(item);
}

var halogenMap = {};// this is a hash Map, empty curly braces
var halogenSet = <String>{};//empty Hash set when the type is specified before curly braces
Set<String> halogneAnotherSet = {};// Empty hash set

///Map - in other programming laguages it is also called dictionary in c#, python
var gifts = {
  //Key: Value - key can be integer also
  'first': 'ABC',
  'second': 'BBC',
  'third': 'CCN'
};
print(gifts['first']);
var gifts1 = {
  //Key: Value - key can be integer also
  1: 'ABBC',
  2: 'BBBC',
  3: 'CCCN'
};
print(gifts1[1]);

var gifts3 = Map();
gifts3['first'] = 'Mango';
print(gifts3['first']);

///Function
showOutput(square(2));
showOutput(square(2.5));
print(square.runtimeType);//prints (dynamic) => dynamic , so can accept any type and can return any type

//Arrow function =>, called Fat arrow or fat arrow expression
showOutput(square1(4));

//Anonymous function
var list = ['apple', 'bananas', 'oranges'];

list.forEach(showOutput);//general way, passing a nemd function
list.forEach((element) {//(element){} is the anonymous function
  showOutput(element);
});

//Two types of Parameters - positional argument/parameter and named parameter

//positional parameters
print(positionalParameterSum(2, 3));// 2 is passed in first argument and 3 is passed in second argument

//Named parameters
print(namedParametersSum(num2: 4, num1: 1));//if named parameters are specified in function definition then we need to pass them with name, in any order

//Can mix positional and named parameters. By default named parameters is optional
print(MixedParamsSum(2, num2: 4));
print(MixedParamsSum(7));
print(MixedparamsSum1(6));//optional function parameter [var num2]
print(MixedparamsSum1(6,6));
}

class NumberClass {
  int? num= null;
}

///num2 is a named parameter and has a default value of 10
dynamic MixedParamsSum(var num1,{var num2 = 10}) => num1 + num2;

///num2 parameter is a optional parameter, as it is defined in the square brackets
dynamic MixedparamsSum1(var num1, [var num2 = 10]) => num1 + num2;

dynamic positionalParameterSum(var num1, var num2) => num1 + num2;

dynamic namedParametersSum({var num1, var num2}) => num1 + num2;

/// As the return type is dynamic we can return any type int, double etc
dynamic square(var param){
  return param * param;
}

/////Arrow function =>, called Fat arrow or fat arrow expression ( A short hand way to write a function)
dynamic square1(var param) =>  param * param;

//if nothing to return then it is void
void showOutput(var msg){
  print(msg);
}
