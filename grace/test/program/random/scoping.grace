method f (a) {
  var c := 3;
  object {
    method g (b) {
//      print(c);
      print(b);
      print(a);
    };
  };
};

f(1).g(2);