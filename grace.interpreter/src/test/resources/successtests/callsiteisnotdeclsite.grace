class s {
  def y = 1;
  method f { y; };
};

def a = object {
  inherit s;
  def y = 3;
  print(f);
};

// 3