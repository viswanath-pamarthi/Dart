//Exception handling

void main(List<String> args) {
  letVerifyTheValue(10);
  letVerifyTheValue(0);
}

int mustGreaterThanZero(int val){
  if(val <= 0){
    throw Exception('Value must be greater then zero');
  }
  return val;
}

void letVerifyTheValue(var val)
{
  var valueVerification;

  try{
    valueVerification = mustGreaterThanZero(val);
  }
  // on exception //can have a catch block for an explicit exception
  catch(e){//all exceptions are caught here
    print(e);
  }
  finally{
    if(valueVerification == null){
      print('value is not accepted');
    }
    else{
      print('Value verified: $valueVerification');
    }
  }
}