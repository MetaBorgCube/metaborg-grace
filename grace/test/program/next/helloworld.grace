def a = 2;
method b { 5; };
object {
  print(c);
  object {
    def c = 6;
    print(a);
    print(b);
    print(c);
    object {
      print(a);
      print(b);
      print(c);
    };
  };
};
