class A {
  method f { 5; };
};

print(object {
  inherit A alias g = f;
}.g); // should error, as g is confidential