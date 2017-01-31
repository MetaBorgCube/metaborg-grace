def o = object {
    method g {
      return 5;
      print("A");
    };
    
    method f {
      return g;
      print("B");
    };
};

print(o.f);