class s {
  def y = 1;
  method f { y; };
};

def a = object {
  inherit s;
  def y = 3;
  base_print(f);
};

// 3