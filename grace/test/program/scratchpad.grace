method print(a) {
  base_print(a);
};

//method f {
//  5;
//};
def a = object {
  method h {
    base_print(7);
  };
};

def b = object {
  method g {
    base_print(6);
  };
  object{
      object{
          object {
            a.h;
          };
      };
  };
};

//print(f);

//print(b.g);
