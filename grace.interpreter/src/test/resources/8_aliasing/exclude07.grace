class A {
  method f {
    print("F");
  };
  method g {
    f;
  };  
}; 
object {
    inherit A exclude f;
}.g;