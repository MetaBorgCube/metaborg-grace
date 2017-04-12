class A {

  var x := 3;
  
};

class B {
  inherit A;
  
  print(x);
  var x;
  print(x);
};

B;